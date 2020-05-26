using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using ChessDotNet;

namespace ChessServer
{
    /// <summary>
    /// Summary description for ServerComm
    /// </summary>
    public class ServerComm : IHttpHandler
    {
        protected static State state = State.NoPlayers;
        protected enum State { 
            NoPlayers,
            OnePlayer,
            TwoPlayers
        }
        protected static ChessGame game = null;
        MoveType type;
        protected static Move LastMove = null;
        protected static string LastFrom = null;
        protected static string LastTo = null;
        protected static string PlayerWhite;
        protected static string PlayerBlack;
        protected static string Comment= null;


        public void ProcessRequest(HttpContext context)
        {
            // parse request
            String resp="NULL";
            String Family = context.Request.QueryString["Family"];
            String Color = context.Request.QueryString["Color"];
            String Action = context.Request.QueryString["Action"];
            String From = context.Request.QueryString["From"];
            String To = context.Request.QueryString["To"];
            String Sentence = context.Request.QueryString["Sentence"];
            PlayerWhite = context.Request.QueryString["PlayerWhite"];
            PlayerBlack = context.Request.QueryString["PlayerBlack"];

            // ChessGame game = null;
            Move move = null;
            


            switch (Family)
            {
                case "Game":
                    if (Action == "Get")
                    {
                        resp = state.ToString();
                    }
                    else if (Action == "Set" )
                    {
                        if (state == State.NoPlayers &&  Color == "Unknown" )
                        {
                            state = State.OnePlayer;
                            resp = "White";
                        }
                        else if (state == State.NoPlayers && Color == "White")
                        {
                            //cant be
                            resp = "White";
                        }
                        else if (state == State.NoPlayers && Color == "Black")
                        {
                            //cant be
                            resp = "Black";
                        }
                        else if (state == State.OnePlayer && Color == "Unknown")
                        {
                            state = State.TwoPlayers;
                            resp = "Black";
                        }
                        else if (state == State.OnePlayer && Color == "White")
                        {
                            resp = "White";
                        }
                        else if (state == State.OnePlayer && Color == "Black")
                        {
                            //cant be
                            resp = "Black";
                        }
                        else if (state == State.TwoPlayers && Color == "Unknown")
                        {
                            //try later
                            resp = "Unknown";
                        }
                        else if (state == State.TwoPlayers && Color == "White")
                        {
                            //cant be
                            resp = "White";
                        }
                        else if (state == State.TwoPlayers && Color == "Black")
                        {
                            //cant be
                            resp = "Black";
                        }
                    }

                    if(Action == "SetPlayerName")
                    {
                        if(Color == "Black")
                        {
                         //   PlayerBlack = 
                        }
                        else if (Color == "White")
                        {

                        }
                    }

                    if (Action == "GetPlayerName")
                    {
                        if (Color == "Black")
                        {
                            resp = PlayerBlack;
                        }
                        else if (Color == "White")
                        {
                            resp = PlayerWhite;
                        }
                    }

                    break;

                case "Chess":
                    int kk = 1;

                    if ((game == null) && Action == "NewGame" && (Color == "White"))
                    {
                        game = new ChessGame();
                        resp = "Game has started for white";
                    }
                    else if (Action == "NewGame" && Color == "Black")
                    {
                        if (game == null)
                        {
                            resp = "white didnt create the board yet";
                        }
                        else {
                            resp = "Game has started for black";
                        }
                    }
                    else if (game != null)
                    {
                        if (Action == "Move")
                        {
                            ChessDotNet.Player player = Player.White;
                            ChessDotNet.Player playerOpi = Player.Black;
                            if (Color == "Black")
                            {
                                player = Player.Black;
                                playerOpi = Player.White;
                            }

                            move = new Move(From, To, player);
                            bool valid = game.IsValidMove(move);

                            if(valid == true)
                            {
                                type = game.MakeMove(move,true);
                                resp = "Move is valid";
                                LastMove = move;
                                LastFrom = From;
                                LastTo = To;

                              

                            }

                            else if(valid == false)
                            {
                                bool hasValidMoves = game.HasAnyValidMoves(player);
                                


                                if(hasValidMoves == false)
                                {
                                    resp = "Move is not valid, there are no any moves left, checkmate";
                                }

                                else if(hasValidMoves == true)
                                {
                                    resp = "Move is not valid, try again";
                                }

                            }



                        }

                        if(Action == "Turn")
                        {
                            Player turn = game.WhoseTurn;
                            if (turn == Player.White)
                            {
                                resp = "White";
                            }

                            else
                                resp = "Black";
                        }

                        if(Action == "GetLastFrom")
                        {
                            // Position from = LastMove.GetFrom();
                            // Position to = LastMove.GetTo();
                            if(LastFrom == null)
                            {
                                resp = "null";
                            }
                            else
                            {
                                resp = LastFrom;
                                LastFrom = null;
                            }

                        }

                        if (Action == "GetLastTo")
                        {
                            // Position from = LastMove.GetFrom();
                            // Position to = LastMove.GetTo();

                            if (LastTo == null)
                            {
                                resp = "null";
                            }
                            else
                            {
                                resp = LastTo;
                                LastTo = null;
                            }
                            //resp = LastTo;

                        }

                        if(Action == "IsInCheck")
                        {
                            ChessDotNet.Player player = Player.White;
                            ChessDotNet.Player playerOpi = Player.Black;
                            if (Color == "Black")
                            {
                                player = Player.Black;
                                playerOpi = Player.White;
                            }

                            if(game.IsInCheck(player))
                            {
                                resp = "Is In Check";
                                if(game.IsCheckmated(player))
                                {
                                    resp = "Is In CheckMate";
                                }
                            }

                        }

                        if(Action == "isWinner")
                        {
                            ChessDotNet.Player player = Player.White;
                            ChessDotNet.Player playerOpi = Player.Black;
                            if (Color == "Black")
                            {
                                player = Player.Black;
                                playerOpi = Player.White;
                            }

                            game.IsWinner(player);
                        }
                    }

                    break;

                case "DataBase":
                    int l = 3;
                    break;

                case "Chat":
                    if(Action == "GetChat")
                    {
                        resp = Comment;
                        
                    }

                    if(Action == "SendChat")
                    {
                        Comment = Sentence;


                        if (Color == "White")
                        {
                            resp = "White Is Saying:" + Comment;
                            Comment = resp;
                        }

                        else
                        {
                            resp = "Black Is Saying:" + Comment;
                            Comment = resp;
                        }
                    }


                    

                    int a = 4;
                    break;
            }

            context.Response.ContentType = "text/plain";
            context.Response.Write(resp);
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}