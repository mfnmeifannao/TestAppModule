Pod::Spec.new do |s|

s.name         = "TestAppModule"
s.version      = "1.0.0"
s.summary      = "A short description of TestAppModule"
s.description  = "Gray's TestAppModule demo"
s.homepage     = "http://EXAMPLE/TestAppModule"
# s.license      = { :type => 'MIT', :file => 'LICENSE' }
s.author       = { "mayunlong" => "mfn_meifannao@163.com" }
s.source       = { :git => "https://github.com/mfnmeifannao/TestAppModule.git", :tag => "#{spec.version}" }
s.ios.deployment_target = '10.0'

#基础组件
s.subspec 'TestBasic' do |bm|
    bm.source_files = 'TestBasic/TestBasic/Tools/**/*.{h,m,swift}'
    bm.resource_bundles = {
        'TestBasic' => [
        'TestBasic/TestBasic/Tools/**/*.{storyboard,xcassets,xib,json}'
    ]
}
bm.dependency 'MGJRouter'
bm.ios.framework  = 'UIKit'
end

#TestA组件
s.subspec 'TestOC' do |oc|
    oc.source_files = 'TestA/TestA/Classes/**/*.{h,m,swift}'
    oc.resource_bundles = {
        'TestOC' => [
        'TestOC/TestOC/Classes/**/*.{storyboard,xcassets,xib,json}'
    ]
}
oc.prefix_header_file = 'TestOC/TestOC/Classes/TestOC.pch'
oc.dependency 'TestAppModule/TestBasic'
#oc.dependency 'TestSwiftModule/TestSwiftBasis'
oc.ios.framework  = 'UIKit'
end

end
