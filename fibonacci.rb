def fibs(position, fibray = [0,1])
  if position == 0
    return fibray[0]
  elsif position == 1
    return fibray
  else
    (position-2).times do
      fibray << fibray[-2..-1].sum
    end
  end
  return fibray
end

p "Reg Fib: #{fibs(4)}"


def fibs_rec(n)
  if n==1
    return [0]
  elsif n==2
    return [0, 1]
  else
    fibs_rec(n-1) << fibs_rec(n-1)[-2..-1].sum
  end
end

p "Fib Rec: #{fibs_rec(4)}"