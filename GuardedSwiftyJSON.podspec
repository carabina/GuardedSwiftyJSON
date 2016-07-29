Pod::Spec.new do |s|
  s.name        = "GuardedSwiftyJSON"
  s.version     = "0.3"
  s.summary     = "GuardedSwiftyJSON helps perform guarded initialization of models from JSON"
  s.homepage    = "https://github.com/wiggzz/GuardedSwiftyJSON"
  s.license     = { :type => "MIT" }
  s.authors     = { "Will James" => "jameswt@gmail.com" }

  s.source   = { :git => "https://github.com/wiggzz/GuardedSwiftyJSON.git", :tag => s.version }
  s.source_files = "GuardedSwiftyJSON/*.swift"
end
