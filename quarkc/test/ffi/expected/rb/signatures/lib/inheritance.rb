module Quark
require "quark"
def self.inheritance; Inheritance; end
module Inheritance
require 'quark' # .../reflect
require_relative 'inheritance/t1' # 0 ('inheritance',) ()
require_relative 'inheritance/t2' # 0 ('inheritance',) ()
require_relative 'inheritance/pets' # 0 ('inheritance',) ()
require_relative 'inheritance/super_' # 0 ('inheritance',) ()
require_relative 'inheritance/use_before_def' # 0 ('inheritance',) ()


def self.Base; Base; end
class Base < ::DatawireQuarkCore::QuarkObject
    attr_accessor :name
    extend ::DatawireQuarkCore::Static

    static inheritance_Base_ref: -> { nil }



    def initialize()
        self.__init_fields__

        nil
    end




    def _getClass()
        
        return "inheritance.Base"

        nil
    end

    def _getField(name)
        
        if ((name) == ("name"))
            return (self).name
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("name"))
            (self).name = ::DatawireQuarkCore.cast(value) { ::String }
        end

        nil
    end

    def __init_fields__()
        
        self.name = nil

        nil
    end


end
Base.unlazy_statics

def self.Test; Test; end
class Test < ::Quark.inheritance.Base
    attr_accessor :mumble, :later
    extend ::DatawireQuarkCore::Static

    static inheritance_Test_ref: -> { nil }



    def initialize()
        
        super()

        nil
    end




    def _getClass()
        
        return "inheritance.Test"

        nil
    end

    def _getField(name)
        
        if ((name) == ("name"))
            return (self).name
        end
        if ((name) == ("mumble"))
            return (self).mumble
        end
        if ((name) == ("later"))
            return (self).later
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("name"))
            (self).name = ::DatawireQuarkCore.cast(value) { ::String }
        end
        if ((name) == ("mumble"))
            (self).mumble = ::DatawireQuarkCore.cast(value) { ::String }
        end
        if ((name) == ("later"))
            (self).later = ::DatawireQuarkCore.cast(value) { ::String }
        end

        nil
    end

    def __init_fields__()
        
        super
        self.mumble = nil
        self.later = nil

        nil
    end


end
Test.unlazy_statics

def self.A; A; end
class A < ::DatawireQuarkCore::QuarkObject
    attr_accessor :name
    extend ::DatawireQuarkCore::Static

    static inheritance_A_ref: -> { nil }



    def initialize(name)
        
        self.__init_fields__

        nil
    end




    def _getClass()
        
        return "inheritance.A"

        nil
    end

    def _getField(name)
        
        if ((name) == ("name"))
            return (self).name
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("name"))
            (self).name = ::DatawireQuarkCore.cast(value) { ::String }
        end

        nil
    end

    def __init_fields__()
        
        self.name = nil

        nil
    end


end
A.unlazy_statics

def self.B; B; end
class B < ::Quark.inheritance.A
    extend ::DatawireQuarkCore::Static

    static inheritance_B_ref: -> { nil }



    def initialize(name)
        
        super(name)

        nil
    end




    def greet()
        
        nil

        nil
    end

    def _getClass()
        
        return "inheritance.B"

        nil
    end

    def _getField(name)
        
        if ((name) == ("name"))
            return (self).name
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("name"))
            (self).name = ::DatawireQuarkCore.cast(value) { ::String }
        end

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
B.unlazy_statics

def self.C; C; end
class C < ::Quark.inheritance.A
    extend ::DatawireQuarkCore::Static

    static inheritance_C_ref: -> { nil }



    def initialize(name)
        
        super(("C") + (name))

        nil
    end




    def greet()
        
        nil

        nil
    end

    def _getClass()
        
        return "inheritance.C"

        nil
    end

    def _getField(name)
        
        if ((name) == ("name"))
            return (self).name
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("name"))
            (self).name = ::DatawireQuarkCore.cast(value) { ::String }
        end

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
C.unlazy_statics

def self.X; X; end
class X < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static inheritance_X_ref: -> { nil }



    def initialize()
        self.__init_fields__

        nil
    end




    def _getClass()
        
        return "inheritance.X"

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        

        nil
    end


end
X.unlazy_statics

def self.Y; Y; end
class Y < ::Quark.inheritance.X
    attr_accessor :name
    extend ::DatawireQuarkCore::Static

    static inheritance_Y_ref: -> { nil }



    def initialize(name)
        
        super()

        nil
    end




    def test()
        
        nil

        nil
    end

    def _getClass()
        
        return "inheritance.Y"

        nil
    end

    def _getField(name)
        
        if ((name) == ("name"))
            return (self).name
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("name"))
            (self).name = ::DatawireQuarkCore.cast(value) { ::String }
        end

        nil
    end

    def __init_fields__()
        
        super
        self.name = nil

        nil
    end


end
Y.unlazy_statics

def self.Message; Message; end
class Message < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static inheritance_Message_ref: -> { nil }



    def initialize()
        self.__init_fields__

        nil
    end




    def encode()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

        nil
    end

    def _getClass()
        
        return "inheritance.Message"

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        

        nil
    end


end
Message.unlazy_statics

def self.Ping; Ping; end
class Ping < ::Quark.inheritance.Message
    extend ::DatawireQuarkCore::Static

    static inheritance_Ping_ref: -> { nil }



    def initialize()
        
        super()

        nil
    end




    def _getClass()
        
        return "inheritance.Ping"

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
Ping.unlazy_statics

def self.Pong; Pong; end
class Pong < ::Quark.inheritance.Message
    extend ::DatawireQuarkCore::Static

    static inheritance_Pong_ref: -> { nil }



    def initialize()
        
        super()

        nil
    end




    def toString()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

        nil
    end

    def _getClass()
        
        return "inheritance.Pong"

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
Pong.unlazy_statics


require_relative 'quark_ffi_signatures_md' # 0 () ()

end # module Inheritance
end # module Quark
