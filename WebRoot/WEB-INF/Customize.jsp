<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
	<head>
		<title>3DSpace-Customize</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
		
		<meta name="viewport" content="width=device-width, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
		
		<link href="css/bootstrap.min.css" rel="stylesheet">
	</head>
	<body ontouchstart="">
	<div style="margin:0 auto;">
	
		<link href="css/main.css" rel="stylesheet" />
		<link id="theme" href="css/light.css" rel="stylesheet" />

		<script src="build/three.min.js"></script>
		<script src="examples/js/libs/system.min.js"></script>

		<script src="examples/js/controls/EditorControls.js"></script>
		<script src="examples/js/controls/TransformControls.js"></script>

		<script src="examples/js/libs/jszip.min.js"></script>
		<script src="examples/js/loaders/AMFLoader.js"></script>
		<script src="examples/js/loaders/AWDLoader.js"></script>
		<script src="examples/js/loaders/BabylonLoader.js"></script>
		<script src="examples/js/loaders/ColladaLoader2.js"></script>
		<script src="examples/js/loaders/FBXLoader.js"></script>
		<script src="examples/js/loaders/KMZLoader.js"></script>
		<script src="examples/js/loaders/MD2Loader.js"></script>
		<script src="examples/js/loaders/OBJLoader.js"></script>
		<script src="examples/js/loaders/PlayCanvasLoader.js"></script>
		<script src="examples/js/loaders/PLYLoader.js"></script>
		<script src="examples/js/loaders/STLLoader.js"></script>
		<script src="examples/js/loaders/UTF8Loader.js"></script>
		<script src="examples/js/loaders/VRMLLoader.js"></script>
		<script src="examples/js/loaders/VTKLoader.js"></script>
		<script src="examples/js/loaders/ctm/lzma.js"></script>
		<script src="examples/js/loaders/ctm/ctm.js"></script>
		<script src="examples/js/loaders/ctm/CTMLoader.js"></script>
		<script src="examples/js/exporters/OBJExporter.js"></script>
		<script src="examples/js/exporters/STLExporter.js"></script>

		<script src="examples/js/loaders/deprecated/SceneLoader.js"></script>

		<script src="examples/js/renderers/Projector.js"></script>
		<script src="examples/js/renderers/CanvasRenderer.js"></script>
		<script src="examples/js/renderers/RaytracingRenderer.js"></script>
		<script src="examples/js/renderers/SoftwareRenderer.js"></script>
		<script src="examples/js/renderers/SVGRenderer.js"></script>

		<link rel="stylesheet" href="js/libs/codemirror/codemirror.css">
		<link rel="stylesheet" href="js/libs/codemirror/theme/monokai.css">
		<script src="js/libs/codemirror/codemirror.js"></script>
		<script src="js/libs/codemirror/mode/javascript.js"></script>
		<script src="js/libs/codemirror/mode/glsl.js"></script>

		<script src="js/libs/esprima.js"></script>
		<script src="js/libs/jsonlint.js"></script>
		<script src="js/libs/glslprep.min.js"></script>

		<link rel="stylesheet" href="js/libs/codemirror/addon/dialog.css">
		<link rel="stylesheet" href="js/libs/codemirror/addon/show-hint.css">
		<link rel="stylesheet" href="js/libs/codemirror/addon/tern.css">
		<script src="js/libs/codemirror/addon/dialog.js"></script>
		<script src="js/libs/codemirror/addon/show-hint.js"></script>
		<script src="js/libs/codemirror/addon/tern.js"></script>
		<script src="js/libs/acorn/acorn.js"></script>
		<script src="js/libs/acorn/acorn_loose.js"></script>
		<script src="js/libs/acorn/walk.js"></script>
		<script src="js/libs/ternjs/polyfill.js"></script>
		<script src="js/libs/ternjs/signal.js"></script>
		<script src="js/libs/ternjs/tern.js"></script>
		<script src="js/libs/ternjs/def.js"></script>
		<script src="js/libs/ternjs/comment.js"></script>
		<script src="js/libs/ternjs/infer.js"></script>
		<script src="js/libs/ternjs/doc_comment.js"></script>
		<script src="js/libs/tern-threejs/threejs.js"></script>

		<script src="js/libs/signals.min.js"></script>
		<script src="js/libs/ui.js"></script>
		<script src="js/libs/ui.three.js"></script>

		<script src="js/libs/app.js"></script>
		<script src="js/Player.js"></script>
		<script src="js/Script.js"></script>

		<script src="../examples/js/effects/VREffect.js"></script>
		<script src="../examples/js/controls/VRControls.js"></script>

		<script src="js/Storage.js"></script>

		<script src="js/Editor.js"></script>
		<script src="js/Config.js"></script>
		<script src="js/History.js"></script>
		<script src="js/Loader.js"></script>
		<script src="js/Menubar.js"></script>
		<script src="js/Menubar.File.js"></script>
		<script src="js/Menubar.Edit.js"></script>
		<script src="js/Menubar.Add.js"></script>
		<script src="js/Menubar.Play.js"></script>
		<script src="js/Menubar.Examples.js"></script>
		<script src="js/Menubar.Help.js"></script>
		<script src="js/Menubar.Status.js"></script>
		<script src="js/Sidebar.js"></script>
		<script src="js/Sidebar.Scene.js"></script>
		<script src="js/Sidebar.Project.js"></script>
		<script src="js/Sidebar.Settings.js"></script>
		<script src="js/Sidebar.Properties.js"></script>
		<script src="js/Sidebar.Object.js"></script>
		<script src="js/Sidebar.Geometry.js"></script>
		<script src="js/Sidebar.Geometry.Geometry.js"></script>
		<script src="js/Sidebar.Geometry.BufferGeometry.js"></script>
		<script src="js/Sidebar.Geometry.Modifiers.js"></script>
		<script src="js/Sidebar.Geometry.BoxGeometry.js"></script>
		<script src="js/Sidebar.Geometry.CircleGeometry.js"></script>
		<script src="js/Sidebar.Geometry.CylinderGeometry.js"></script>
		<script src="js/Sidebar.Geometry.IcosahedronGeometry.js"></script>
		<script src="js/Sidebar.Geometry.PlaneGeometry.js"></script>
		<script src="js/Sidebar.Geometry.SphereGeometry.js"></script>
		<script src="js/Sidebar.Geometry.TorusGeometry.js"></script>
		<script src="js/Sidebar.Geometry.TorusKnotGeometry.js"></script>
		<script src="examples/js/geometries/TeapotBufferGeometry.js"></script>
		<script src="js/Sidebar.Geometry.TeapotBufferGeometry.js"></script>
		<script src="js/Sidebar.Geometry.LatheGeometry.js"></script>
		<script src="js/Sidebar.Material.js"></script>
		<script src="js/Sidebar.Animation.js"></script>
		<script src="js/Sidebar.Script.js"></script>
		<script src="js/Sidebar.History.js"></script>
		<script src="js/Toolbar.js"></script>
		<script src="js/Viewport.js"></script>
		<script src="js/Viewport.Info.js"></script>
		<script src="js/Command.js"></script>
		<script src="js/commands/AddObjectCommand.js"></script>
		<script src="js/commands/RemoveObjectCommand.js"></script>
		<script src="js/commands/MoveObjectCommand.js"></script>
		<script src="js/commands/SetPositionCommand.js"></script>
		<script src="js/commands/SetRotationCommand.js"></script>
		<script src="js/commands/SetScaleCommand.js"></script>
		<script src="js/commands/SetValueCommand.js"></script>
		<script src="js/commands/SetUuidCommand.js"></script>
		<script src="js/commands/SetColorCommand.js"></script>
		<script src="js/commands/SetGeometryCommand.js"></script>
		<script src="js/commands/SetGeometryValueCommand.js"></script>
		<script src="js/commands/MultiCmdsCommand.js"></script>
		<script src="js/commands/AddScriptCommand.js"></script>
		<script src="js/commands/RemoveScriptCommand.js"></script>
		<script src="js/commands/SetScriptValueCommand.js"></script>
		<script src="js/commands/SetMaterialCommand.js"></script>
		<script src="js/commands/SetMaterialValueCommand.js"></script>
		<script src="js/commands/SetMaterialColorCommand.js"></script>
		<script src="js/commands/SetMaterialMapCommand.js"></script>
		<script src="js/commands/SetSceneCommand.js"></script>

		<!-- <script type="text/javascript" src="https://www.dropbox.com/static/api/2/dropins.js" id="dropboxjs" data-app-key="qyqgfqd9j8z890t"></script> -->

		<script>

			window.URL = window.URL || window.webkitURL;
			window.BlobBuilder = window.BlobBuilder || window.WebKitBlobBuilder || window.MozBlobBuilder;

			Number.prototype.format = function (){
				return this.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1,");
			};

			//

			var editor = new Editor();

			var viewport = new Viewport( editor );
			document.body.appendChild( viewport.dom );

			var script = new Script( editor );
			document.body.appendChild( script.dom );

			var player = new Player( editor );
			document.body.appendChild( player.dom );

			var toolbar = new Toolbar( editor );
			document.body.appendChild( toolbar.dom );

			var menubar = new Menubar( editor );
			document.body.appendChild( menubar.dom );

			var sidebar = new Sidebar( editor );
			document.body.appendChild( sidebar.dom );

			var modal = new UI.Modal();
			document.body.appendChild( modal.dom );

			//

			editor.setTheme( editor.config.getKey( 'theme' ) );

			editor.storage.init( function () {

				editor.storage.get( function ( state ) {

					if ( isLoadingFromHash ) return;

					if ( state !== undefined ) {

						editor.fromJSON( state );

					}

					var selected = editor.config.getKey( 'selected' );

					if ( selected !== undefined ) {

						editor.selectByUuid( selected );

					}

				} );

				//

				var timeout;

				function saveState( scene ) {

					if ( editor.config.getKey( 'autosave' ) === false ) {

						return;

					}

					clearTimeout( timeout );

					timeout = setTimeout( function () {

						editor.signals.savingStarted.dispatch();

						timeout = setTimeout( function () {

							editor.storage.set( editor.toJSON() );

							editor.signals.savingFinished.dispatch();

						}, 100 );

					}, 1000 );

				};

				var signals = editor.signals;

				signals.geometryChanged.add( saveState );
				signals.objectAdded.add( saveState );
				signals.objectChanged.add( saveState );
				signals.objectRemoved.add( saveState );
				signals.materialChanged.add( saveState );
				signals.sceneGraphChanged.add( saveState );
				signals.scriptChanged.add( saveState );
				signals.historyChanged.add( saveState );

				signals.showModal.add( function ( content ) {

					modal.show( content );

				} );

			} );

			//

			document.addEventListener( 'dragover', function ( event ) {

				event.preventDefault();
				event.dataTransfer.dropEffect = 'copy';

			}, false );

			document.addEventListener( 'drop', function ( event ) {

				event.preventDefault();

				if ( event.dataTransfer.files.length > 0 ) {

					editor.loader.loadFile( event.dataTransfer.files[ 0 ] );

				}

			}, false );

			document.addEventListener( 'keydown', function ( event ) {

				switch ( event.keyCode ) {

					case 8:
						event.preventDefault(); // prevent browser back

						var object = editor.selected;

						if ( confirm( 'Delete ' + object.name + '?' ) === false ) return;

						var parent = object.parent;
						if ( parent !== null ) editor.execute( new RemoveObjectCommand( object ) );

						break;

					case 90: // Register Ctrl-Z for Undo, Ctrl-Shift-Z for Redo

						if ( event.ctrlKey && event.shiftKey ) {

							editor.redo();

						} else if ( event.ctrlKey ) {

							editor.undo();

						}
						
						break;
						
					case 87: // Register W for translation transform mode
						editor.signals.transformModeChanged.dispatch( 'translate' );
						
						break;
						
					case 69: // Register E for rotation transform mode
						editor.signals.transformModeChanged.dispatch( 'rotate' );
						
						break;
						
					case 82: // Register R for scaling transform mode
						editor.signals.transformModeChanged.dispatch( 'scale' );
						
						break;

				}

			}, false );

			function onWindowResize( event ) {

				editor.signals.windowResize.dispatch();

			}

			window.addEventListener( 'resize', onWindowResize, false );

			onWindowResize();

			//

			var isLoadingFromHash = false;
			var hash = window.location.hash;

			if ( hash.substr( 1, 5 ) === 'file=' ) {

				var file = hash.substr( 6 );

				if ( confirm( 'Any unsaved data will be lost. Are you sure?' ) ) {

					var loader = new THREE.XHRLoader();
					loader.crossOrigin = '';
					loader.load( file, function ( text ) {

						editor.clear();
						editor.fromJSON( JSON.parse( text ) );

					} );

					isLoadingFromHash = true;

				}

			}

			/*
			window.addEventListener( 'message', function ( event ) {

				editor.clear();
				editor.fromJSON( event.data );

			}, false );
			*/

		</script>
		</div>
	</body>
</html>
