package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import hu.vizoli.examples.robotlegs2.modular.shell.config.CommandConfig;
	import hu.vizoli.examples.robotlegs2.modular.shell.config.MediatorConfig;
	import hu.vizoli.examples.robotlegs2.modular.shell.config.ModelConfig;
	import hu.vizoli.examples.robotlegs2.modular.shell.config.ModuleConfig;
	import robotlegs.bender.bundles.mvcs.MVCSBundle;
	import robotlegs.bender.extensions.contextView.ContextView;
	import robotlegs.bender.extensions.contextView.ContextViewExtension;
	import robotlegs.bender.extensions.modularity.ModularityExtension;
	import robotlegs.bender.framework.api.IContext;
	import robotlegs.bender.framework.impl.Context;
	
	/**
	 * ...
	 * @author vizoli
	 */
	public class Main extends Sprite 
	{
		private var _context:IContext;
		
		public function Main( ):void 
		{
			this.setupContext();
			
			if ( this.stage ) this.init( );
			else addEventListener( Event.ADDED_TO_STAGE, this.init );
		}
		
		/**
		 * Setup the context
		 */
		private function setupContext( ):void 
		{
			this._context = new Context()
				.install( 	MVCSBundle )
				.install( 	ContextViewExtension )
				.install( 	ModularityExtension )
				.configure( ModelConfig, 
							MediatorConfig, 
							CommandConfig, 
							ModuleConfig,
							new ContextView( this ) 
						  );
		}
		
		/**
		 * Init
		 * 
		 * @param	e
		 */
		private function init( e:Event = null ):void 
		{
			this.removeEventListener( Event.ADDED_TO_STAGE, this.init );
		}
		
	}
	
}