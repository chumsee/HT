# frozen_string_literal: true

class Dragon
  # Создаем класс дракон и прописываем его поведение
  def initialize(time)
    @five_minutes_cycles = time / 5
    @first_head_behaviour = %w[F F B B L L R R]
    @second_head_behaviour = %w[B B B L L L R R R]
    @third_head_behaviour = %w[R R R R L L L L F F F F]
  end

  # общий метод для создания истории головы
  def create_head_history(behaviour, start_new_head_cycle)
    head_history = []
    head_cycle_state = 0
    whole_cycle_state = 0
    @five_minutes_cycles.times do
      head_history << behaviour[head_cycle_state] + whole_cycle_state.to_s
      whole_cycle_state += 1
      head_cycle_state += 1
      head_cycle_state = 0 if head_cycle_state == start_new_head_cycle
    end
    head_history
  end

  # Cоздаем историю просмотров каждой головы
  def create_first_head_look_history
    create_head_history(@first_head_behaviour, 8)
  end

  def create_second_head_look_history
    create_head_history(@second_head_behaviour, 9)
  end

  def create_third_head_look_history
    create_head_history(@third_head_behaviour, 12)
  end

  #Находим общее время, когда головы смотрят в одну сторону
  def find_watching_in_one_direction_time_with_all_heads
    p (create_first_head_look_history & create_second_head_look_history & create_third_head_look_history).count * 5
  end
end
