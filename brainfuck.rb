class Brainfuck
  def initialize
    @cells = [0]
    @source = ""
    @cursor = 0
    @pointer = 0
    @output = ""
  end

  def run
  end

  def next # >
    @pointer += 1
    @cells[@pointer] = 0 if @pointer > (@cells.length - 1)
  end

  def prev # <
    @pointer -= 1
  end

  def increment # +
    @cells[@pointer] += 1
  end

  def decrement # -
    @cells[@pointer] -= 1
  end

  def write # .
    @output += @cells[@pointer].chr
  end

  def read # ,
    @cells[@pointer] = STDIN.readchar.ord
  end

  def loop_start # [
    if @cells[@pointer] == 0
      #対応する]の次に飛ぶ
      @pointer = searchBrackets
    end
  end

  def loop_end # ]
    if @cells[@pointer] != 0
      #対応する[の次に飛ぶ
      @pointer = searchBrackets
    end
  end

  def searchBrackets
    counte = 0
    case @source[@cursor]
    when '['
      (@ponter..@source.length).each do |i|
        case @source[i]
        when '['
          counter += 1
        when ']'
          if counter == 0
            return i
          else
            counter -= 1
          end
        end
      end
    when ']'
      (@pointer..0).each do |i|
        case @source[i]
        when '['
          if counter == 0
            return i
          else
            counter -= 1
          end
        when ']'
          counter += 1
        end
    end
  end
end

sorce = ""


