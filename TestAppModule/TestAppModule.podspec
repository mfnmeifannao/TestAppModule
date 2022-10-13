Pod::Spec.new do |s|

s.name         = "TestAppModule"
s.version      = "1.0.0"
s.summary      = "A short description of TestAppModule"
s.description  = "Gray's TestAppModule demo"
s.homepage     = "https://github.com/mfnmeifannao/TestAppModule"
# s.license      = { :type => 'MIT', :file => 'LICENSE' }
s.author       = { "mayunlong" => "mfn_meifannao@163.com" }
s.source       = { :git => "https://github.com/mfnmeifannao/TestAppModule.git", :tag => s.version.to_s }
s.ios.deployment_target = '10.0'

    #基础组件
    s.subspec 'TestBasic' do |bm|
        bm.source_files = 'TestBasic/TestBasic/Tools/**/*.{h,m,swift,o}'
        bm.resource_bundles = {
            'TestBasic' => [
            'TestBasic/TestBasic/Tools/**/*.{storyboard,xcassets,xib,json}'
        ]
    }
    #bm.dependency 'MGJRouter'
    bm.ios.framework  = 'UIKit'
    end

    #TestOC组件
    s.subspec 'TestOC' do |oc|
        oc.source_files = 'TestOC/TestOC/Classes/**/*.{h,m,swift,o}'
        oc.resource_bundles = {
            'TestOC' => [
            'TestOC/TestOC/Classes/**/*.{storyboard,xcassets,xib,json}'
        ]
    }
    oc.dependency 'TestAppModule/TestBasic'
    #oc.dependency 'TestSwiftModule/TestSwiftBasis'
    oc.ios.framework  = 'UIKit'
    
    end

    #TestSwift组件
    s.subspec 'TestSwift' do |swift|
        swift.source_files = 'TestSwift/TestSwift/Classes/**/*.{h,m,swift,o}'
        swift.resource_bundles = {
            'TestSwift' => [
            'TestSwift/TestSwift/Classes/**/*.{storyboard,xcassets,xib,json}'
        ]
    }
    swift.dependency 'TestAppModule/TestBasic'
    #swift.dependency 'TestSwiftModule/TestSwiftBasis'
    swift.ios.framework  = 'UIKit'
    
    end
end
