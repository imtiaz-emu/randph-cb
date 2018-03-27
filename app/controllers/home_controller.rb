class HomeController < ApplicationController

  def index

  end

  def rand_ph

    while(1)
      @new_phrase = Phrase.all.sample.name
      if session[:rand_ph].nil?
        return (session[:rand_ph] = @new_phrase)
      end
      if session[:rand_ph].length == 10
        return session[:rand_ph]
      end
      unless session[:rand_ph].include?(@new_phrase)
        return (session[:rand_ph] = session[:rand_ph] + @new_phrase)
      end
    end
  end

  def clear_ph
    return session.delete(:rand_ph)
  end

end
