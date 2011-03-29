if platform?("suse")
  node[:authorization][:sudo][:users].push("vagrant")
end
