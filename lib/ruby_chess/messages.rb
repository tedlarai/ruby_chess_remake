module RubyChess
  module Messages
    def self.welcome
      "Welcome to Ruby Chess"
    end

    def self.no_saved_file
      "There is no saved file to load"
    end

    def self.new_game
      "Game Started"
    end

    def self.invalid_command(command)
      "Invalid command: \"#{command}\". Please refer to the command list and try again."
    end

    def self.saved_game
      "Game saved"
    end

    def self.invalid_move_phrase(command)
      "Invalid move: \"#{command}\". "
    end

    def self.same_tile_move(command)
      invalid_move_phrase(command) + "Cannot move piece to same tile."
    end

    def self.empty_origin_tile(command)
      invalid_move_phrase(command) + "Tile #{command.split("-")[0]} is empty."
    end

    def self.wrong_color(command)
      invalid_move_phrase(command) + "Piece at #{command.split("-")[0]} is not yours!"
    end

    def self.capturing_own_piece(command)
      invalid_move_phrase(command) + "Cannot capture piece at #{command.split("-")[1]}, it's yours."
    end

    def self.capturing_own_piece_enpassant(command, to)
      invalid_move_phrase(command) + "Cannot capture piece at #{to[0].to_s.tr("1-8", "a-h")}#{to[1]}, it's yours."
    end

    def self.piece_not_capable_of_move(piece, command)
      invalid_move_phrase(command) + "#{piece.class.to_s[8..-1]} not capable of this move."
    end

    def self.piece_not_capable_of_capture(piece, command)
      invalid_move_phrase(command) + "#{piece.class.to_s[8..-1]} not capable of this capture."
    end

    def self.piece_cannot_jump(piece, tile, command)
      invalid_move_phrase(command) + "#{piece.class.to_s[8..-1]} cannot jump piece at #{tile[0].to_s.tr("1-8", "a-h")}#{tile[1]}."
    end

    def self.king_near_other_king(command)
      invalid_move_phrase(command) + "King cannot be this near to the other king."
    end

    def self.own_king_in_check(command)
      invalid_move_phrase(command) + "Leaving own king in check."
    end

    def self.successful_move(command)
      "Moved successfully: \"#{command}\""
    end

    def self.victory(player)
      "\n   Checkmate!! Nice victory, #{player.capitalize}!!"
    end

    def self.draw
      "\n   What a pair of fierce competitors! It is a draw!"
    end

    def self.check
      "\n   Whoa, nice move! Check!"
    end

    def self.king_moved(command)
      invalid_move_phrase(command) + "Cannot castle, king already moved."
    end

    def self.rook_moved_or_captured(command)
      invalid_move_phrase(command) + "Cannot castle, rook already moved or was captured."
    end

    def self.piece_between_king_and_rook(command, piece)
      invalid_move_phrase(command) + "Cannot castle, #{piece.class.to_s[8..-1]} is on the way."
    end

    def self.already_castled(command)
      invalid_move_phrase(command) + "Already castled."
    end

    def self.king_would_be_attacked(command, tile)
      invalid_move_phrase(command) + "Cannot castle, king would be attacked at #{tile[0].to_s.tr("1-8", "a-h")}#{tile[1]}."
    end

    def self.king_under_attack(command)
      invalid_move_phrase(command) + "Cannot castle, king under attack!"
    end

    def self.promotion(command)
      "Pawn promotion at #{command.split("-")[1]}.\n   Choose between (q)ueen, (r)ook, (b)ishop or (k)night."
    end

    def self.invalid_promotion(command)
      "Invalid option \"#{command}\".\n   Choose between (q)ueen, (r)ook, (b)ishop or (k)night."
    end

    def self.successful_promotion(piece)
      "Successfully promoted Pawn to #{piece.class.to_s[8..-1]}"
    end
  end
end
