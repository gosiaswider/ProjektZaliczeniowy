require 'rails_helper'

describe Ticket do
  it { should validate_presence_of :name }
  it { should validate_presence_of :priority }
  it { should validate_presence_of :description }
  
  describe 'Bug' do
    it 'returns Bug priority of ticket' do
      ticket = Ticket.new(name: 'ticket', description: 'description', priority: 'Normal' , status:'Open' , difficulty: 'Bug')
      expect(ticket.difficulty).to eq 'Bug'
    end
  end
  
  describe 'Support' do
    it 'returns support priority of ticket' do
      ticket = Ticket.new(name: 'ticket', description: 'description', priority: 'Normal' , status:'Open' , difficulty: 'Support')
      expect(ticket.difficulty).to eq 'Support'
    end
  end
  
  describe 'Improvement' do
    it 'returns Improvement priority of ticket' do
      ticket = Ticket.new(name: 'ticket', description: 'description', priority: 'Normal' , status:'Open' , difficulty: 'Improvement')
      expect(ticket.difficulty).to eq 'Improvement'
    end
  end
  
end
