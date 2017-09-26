class Brainfuck
  def initialize
    @cells = [0]
    @source = ""
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
  end

  def loop_end # ]
  end
end

sorce = ""


