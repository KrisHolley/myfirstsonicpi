def wake_up(awake)
  awake = [1,2,3,4,5].choose
  puts "awake #{awake}"
  if awake <= 3
    play(62)
    sleep(1)
  else
    sample :ambi_piano, rate: awake
    wake_up(awake - 1)
    sleep(1)
  end
end

def get_toothbrush(dry)
  sample dry
  sleep(1)
end

def wet_toothbrush(wet)
  play(wet)
  sleep(1)
end

def get_toothpaste()
  sample :elec_snare
  sleep(1)
end

def brush_teeth()
  play(80)
  sleep(1)
end
def dirty()
  1 == [1,2]
end

3.times do
  wake_up(1)
  get_toothbrush(45)
  wet_toothbrush(99)
  get_toothpaste()
  brush_teeth() if dirty
end

