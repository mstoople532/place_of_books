class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def new
    @book = Book.find(params[:book_id])
  end

  def create
    Reservation.create(reservation_params)
    redirect_to "/reservations"
  end

  def update
    @reservation = Reservation.find(params[:id])
    @reservation.update(reservation_params)
    redirect_to "/reservations"
  end

  private def reservation_params
    params.require(:reservation).permit(:book_id, :reservation_name, :due_date, :returned)
  end

end
