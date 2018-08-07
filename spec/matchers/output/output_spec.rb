describe 'Matchers output' do
  it { expect{puts "Henrique"}.to output.to_stdout }
  it { expect{print "Henrique"}.to output("Henrique").to_stdout }
  it { expect{puts "Henrique"}.to output(/Henrique/).to_stdout }

  it { expect{warn "Henrique"}.to output.to_stderr }
  it { expect{warn "Henrique"}.to output("Henrique\n").to_stderr }
  it { expect{warn "Henrique"}.to output(/Henrique/).to_stderr }
end
