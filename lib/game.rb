class Game

  attr_reader :started, :finished

  def start
    @started = true
    @finished = false
  end

  def started?
    self.started || false
  end

  def play(left = nil, right = nil)
    raise 'Game must first be started' unless started?
    return nil unless (left && right)
    if (left == :rock && right == :scissors || left == :scissors && right == :rock)
      finish_game
      "Rock beats scissors!"
    elsif (left == :rock && right == :paper || left == :paper && right == :rock)
      finish_game
      "Paper beats rock!"
    elsif (left == :scissors && right == :paper || left == :paper && right == :scissors)
      finish_game
      "Scissors beats paper!"
    else
      "Tie Game. Try Again!"
    end
  end

  def finish_game
    @finished = true
  end
end