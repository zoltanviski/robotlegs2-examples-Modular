package hu.vizoli.examples.robotlegs2.modular.shell.model 
{
	import flash.display.DisplayObject;
	import hu.vizoli.examples.robotlegs2.modular.shell.base.BaseModel;
	import hu.vizoli.examples.robotlegs2.modular.shell.config.ModuleConfig;
	import hu.vizoli.examples.robotlegs2.modular.shell.model.events.ModuleModelEvent;
	
	/**
	 * ModuleModel
	 * 
	 * @author vizoli
	 */
	public class ModuleModel extends BaseModel 
	{
		
		public function ModuleModel() 
		{
			
		}
		
		public function addModule( module:DisplayObject ):void
		{
			var event:ModuleModelEvent = new ModuleModelEvent( ModuleModelEvent.LOADED );
			event.module = module;
			
			this.dispatch( event );
		}
		
	}

}