module RailsSandboxBusterjs
  class BusterFilter
    def self.filter(controller)
      controller.template = 'busterjs/runner' if controller.params[:path].try :start_with?, 'busterjs'
    end
  end

  class Engine < ::Rails::Engine
    initializer 'sandbox_assets.busterjs' do |app|
      unless app.config.sandbox_assets.template == 'busterjs/runner'
        SandboxAssets::BaseController.prepend_before_filter BusterFilter
      end
    end
  end
end
