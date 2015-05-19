require 'rails_helper'

describe Ticket do
  it { should validate_presence_of :name }
  it { should validate_presence_of :priority }
  it { should validate_presence_of :description }
  
  describe 'Bug' do
    it 'returns Bug difficulty of ticket' do
      ticket = Ticket.new(name: 'ticket', description: 'description', priority: 'Normal' , status:'Open' , difficulty: 'Bug')
      expect(ticket.difficulty).to eq 'Bug'
    end
  end
  
  describe 'Support' do
    it 'returns support difficulty of ticket' do
      ticket = Ticket.new(name: 'ticket', description: 'description', priority: 'Normal' , status:'Open' , difficulty: 'Support')
      expect(ticket.difficulty).to eq 'Support'
    end
  end
  
  describe 'Improvement' do
    it 'returns Improvement difficulty of ticket' do
      ticket = Ticket.new(name: 'ticket', description: 'description', priority: 'Normal' , status:'Open' , difficulty: 'Improvement')
      expect(ticket.difficulty).to eq 'Improvement'
    end
  end
  
  
  describe 'Low' do
    it 'returns Low priority of ticket' do
      ticket = Ticket.new(name: 'ticket', description: 'description', priority: 'Low' , status:'Open' , difficulty: 'Bug')
      expect(ticket.priority).to eq 'Low'
    end
  end
  
  describe 'Normal' do
    it 'returns normal priority of ticket' do
      ticket = Ticket.new(name: 'ticket', description: 'description', priority: 'Normal' , status:'Open' , difficulty: 'Support')
      expect(ticket.priority).to eq 'Normal'
    end
  end
  
  describe 'High' do
    it 'returns high priority of ticket' do
      ticket = Ticket.new(name: 'ticket', description: 'description', priority: 'High' , status:'Open' , difficulty: 'Improvement')
      expect(ticket.priority).to eq 'High'
    end
  end
  
end
