return function(a, b, t, f)
  local lerp = f or lerp
  local r1, g1, b1, a1 = unpack(a)
  local r2, g2, b2, a2 = unpack(b)
  return {
    lerp(r1, r2, t),
    lerp(g1, g2, t),
    lerp(b1, b2, t),
    lerp(a1, a2, t),
  }
end
