exec{ 'killmenow':
  command  => 'pkill -e killmenow',
  provider => shell,
}
