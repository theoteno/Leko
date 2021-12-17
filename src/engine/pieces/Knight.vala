using Gee;

public class Knight : Piece {

    public Knight(Piece.Colour colour) {
        // base(colour);
        this.colour = colour;
    }


    public override string symbol_resource() {
        return base.colour == Piece.Colour.White ?
        "/com/github/retsef/chess/pieces/KnightW.png" :
        "/com/github/retsef/chess/pieces/KnightB.png";
    }

    public override Piece clone() {
        return new Knight(this.colour);
    }

    public override string to_string() {
        return base.colour.to_string() + " Knight";
    }

    public override Gee.List<Coordinate> movement(Coordinate start) {
        var result = new ArrayList<Coordinate>();

        if(colour == Piece.Colour.White) {
            if(start.is_last_row) return result;

            var coord = start.top();
            result.add(coord);

            if(coord.is_last_row) return result;
            result.add(coord.top_left());
            result.add(coord.top_right());

            return result;
        }

        if(colour == Piece.Colour.Black) {
            if(start.is_first_row) return result;

            var coord = start.bottom();
            result.add(coord);

            if(coord.is_first_row) return result;
            result.add(coord.bottom_left());
            result.add(coord.bottom_right());

            return result;
        }

        return result;
    }

}
