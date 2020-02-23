describe GameOfLife, type: :model do
  describe '#start_game!' do
    context 'should iteract printing the new state of the cells and returning the last state based in the Game of Life Challenges examples' do
      let!(:grid) do
        [
          ['.','.','.','.','.'],
          ['.','.','.','.','.'],
          ['.','.','*','.','.'],
          ['.','.','.','.','.'],
          ['.','.','.','.','.']
        ]
      end

      let!(:state_result) do
        [
          ['.','.','.','.','.'],
          ['.','.','.','.','.'],
          ['.','.','.','.','.'],
          ['.','.','.','.','.'],
          ['.','.','.','.','.']
        ]
      end

      it 'should iteract only once and return the state that it is equals to the state_result' do
        result = nil
        result = GameOfLife.start_game!(grid)
        expect(result).not_to be_nil
        expect(result).to eq(state_result)
      end

      it 'should iteract only once even with the life cycle defined as 100 if grid is full with death cells' do
        result = nil
        result = GameOfLife.start_game!(grid, 100)
        expect(result).not_to be_nil
        expect(result).to eq(state_result)
      end
    end

    context 'should iteract printing the new state of the cells and returning the last state based in the Game of Life Challenges examples' do
      let!(:grid) do
        [
          ['.','.','.','.','.'],
          ['.','.','.','*','.'],
          ['.','*','*','.','.'],
          ['.','.','.','.','.'],
          ['.','.','.','.','.']
        ]
      end

      let!(:state_result) do
        [
          ['.','.','.','.','.'],
          ['.','.','*','.','.'],
          ['.','.','*','.','.'],
          ['.','.','.','.','.'],
          ['.','.','.','.','.']
        ]
      end

      it 'should iteract only once and return the state that it is equals to the state_result' do
        result = nil
        result = GameOfLife.start_game!(grid)
        expect(result).not_to be_nil
        expect(result).to eq(state_result)
      end
    end

    context 'should iteract printing the new state of the cells and returning the last state based in the Game of Life Challenges examples' do
      let!(:grid) do
        [
          ['.','.','.','.','.'],
          ['.','*','*','.','.'],
          ['.','*','*','.','.'],
          ['.','.','.','.','.'],
          ['.','.','.','.','.']
        ]
      end

      let!(:state_result) do
        [
          ['.','.','.','.','.'],
          ['.','*','*','.','.'],
          ['.','*','*','.','.'],
          ['.','.','.','.','.'],
          ['.','.','.','.','.']
        ]
      end

      it 'should iteract only once and return the state that it is equals to the state_result' do
        result = nil
        result = GameOfLife.start_game!(grid)
        expect(result).not_to be_nil
        expect(result).to eq(state_result)
      end

      it 'should iteract only once even with the life cycle defined as 100 if grid is equals after iteraction' do
        result = nil
        result = GameOfLife.start_game!(grid, 100)
        expect(result).not_to be_nil
        expect(result).to eq(state_result)
      end
    end

    context 'should iteract printing the new state of the cells and returning the last state based in the Game of Life Challenges examples' do
      let!(:grid) do
        [
          ['.','.','.','.','.'],
          ['.','.','.','.','.'],
          ['.','*','*','*','.'],
          ['.','.','.','.','.'],
          ['.','.','.','.','.']
        ]
      end

      context 'with one state scenario' do
        let!(:state_result) do
          [
            ['.','.','.','.','.'],
            ['.','.','*','.','.'],
            ['.','.','*','.','.'],
            ['.','.','*','.','.'],
            ['.','.','.','.','.']
          ]
        end

        it 'should iteract only once and return the state that it is equals to the state_result' do
          result = nil
          result = GameOfLife.start_game!(grid)
          expect(result).not_to be_nil
          expect(result).to eq(state_result)
        end
      end

      context 'with two states scenarios' do
        let!(:state_result) do
          [
            ['.','.','.','.','.'],
            ['.','.','.','.','.'],
            ['.','*','*','*','.'],
            ['.','.','.','.','.'],
            ['.','.','.','.','.']
          ]
        end

        it 'should iteract two times and return the state that it is equals to the state_result' do
          result = nil
          result = GameOfLife.start_game!(grid, 2)
          expect(result).not_to be_nil
          expect(result).to eq(state_result)
        end
      end
    end

    context 'should iteract printing the new state of the cells and returning the last state based in the Game of Life Challenges examples' do
      let!(:grid) do
        [
          ['.','.','.','.','.'],
          ['.','.','.','.','.'],
          ['*','*','*','*','.'],
          ['.','.','.','.','.'],
          ['.','.','.','.','.']
        ]
      end

      context 'with one state scenario' do
        let!(:state_result) do
          [
            ['.','.','.','.','.'],
            ['.','*','*','.','.'],
            ['.','*','*','.','.'],
            ['.','*','*','.','.'],
            ['.','.','.','.','.']
          ]
        end

        it 'should iteract only once and return the state that it is equals to the state_result' do
          result = nil
          result = GameOfLife.start_game!(grid)
          expect(result).not_to be_nil
          expect(result).to eq(state_result)
        end
      end

      context 'with two states scenarios' do
        let!(:state_result) do
          [
            ['.','.','.','.','.'],
            ['.','*','*','.','.'],
            ['*','.','.','*','.'],
            ['.','*','*','.','.'],
            ['.','.','.','.','.']
          ]
        end

        it 'should iteract two times and return the state that it is equals to the state_result' do
          result = nil
          result = GameOfLife.start_game!(grid, 2)
          expect(result).not_to be_nil
          expect(result).to eq(state_result)
        end
      end
    end

    context 'should iteract printing the new state of the cells and returning the last state based in the Game of Life Challenges examples' do
      let!(:grid) do
        [
          ['.','*','.','.','.'],
          ['.','.','*','.','.'],
          ['*','*','*','.','.'],
          ['.','.','.','.','.'],
          ['.','.','.','.','.']
        ]
      end

      context 'with one state scenario' do
        let!(:state_result) do
          [
            ['.','.','.','.','.'],
            ['*','.','*','.','.'],
            ['.','*','*','.','.'],
            ['.','*','.','.','.'],
            ['.','.','.','.','.']
          ]
        end

        it 'should iteract only once and return the state that it is equals to the state_result' do
          result = nil
          result = GameOfLife.start_game!(grid)
          expect(result).not_to be_nil
          expect(result).to eq(state_result)
        end
      end

      context 'with two states scenarios' do
        let!(:state_result) do
          [
            ['.','.','.','.','.'],
            ['.','.','*','.','.'],
            ['*','.','*','.','.'],
            ['.','*','*','.','.'],
            ['.','.','.','.','.']
          ]
        end

        it 'should iteract two times and return the state that it is equals to the state_result' do
          result = nil
          result = GameOfLife.start_game!(grid, 2)
          expect(result).not_to be_nil
          expect(result).to eq(state_result)
        end
      end

      context 'with three states scenarios' do
        let!(:state_result) do
          [
            ['.','.','.','.','.'],
            ['.','*','.','.','.'],
            ['.','.','*','*','.'],
            ['.','*','*','.','.'],
            ['.','.','.','.','.']
          ]
        end

        it 'should iteract three times and return the state that it is equals to the state_result' do
          result = nil
          result = GameOfLife.start_game!(grid, 3)
          expect(result).not_to be_nil
          expect(result).to eq(state_result)
        end
      end

      context 'with four states scenarios' do
        let!(:state_result) do
          [
            ['.','.','.','.','.'],
            ['.','.','*','.','.'],
            ['.','.','.','*','.'],
            ['.','*','*','*','.'],
            ['.','.','.','.','.']
          ]
        end

        it 'should iteract four times and return the state that it is equals to the state_result' do
          result = nil
          result = GameOfLife.start_game!(grid, 4)
          expect(result).not_to be_nil
          expect(result).to eq(state_result)
        end
      end
    end
  end
end
