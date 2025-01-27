import { StyleSheet, Platform, StatusBar } from 'react-native';



//Profiles


export const stylesProfile = StyleSheet.create({
  profilesContainer: {
    flex: 1,
  },
  profilesMain: {
    flex: 1,
  },
  profilesSection: {
    
    padding: 16,
  },
  profilesSectionTitle: {
    
    fontSize: 24,
    fontWeight: 'bold',
    marginBottom: 16,
  },
  profilesPerfilItem: {
    
    flexDirection: 'row',
    marginBottom: 24,
    borderRadius: 16,
    overflow: 'hidden',
    elevation: 3,
  },
  profilesPerfilHeader: {
    
    width: '40%',
    aspectRatio: 1,
  },
  profilesPerfilInfo: {
    
    flex: 1,
    padding: 16,
    justifyContent: 'center',
  },
  profilesPerfilNombre: {
    fontSize: 18,
    fontWeight: 'bold',
    marginBottom: 4,
  },
  profilesPerfilDescripcion: {
    fontSize: 14,
  },
  profilesPerfilProductos: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    padding: 16,
  },
  profilesPerfilProducto: {
    width: '48%',
    aspectRatio: 1,
    borderRadius: 8,
    overflow: 'hidden',
  },
  profilesHeader: {
    flexDirection: 'row',
    alignItems: 'center',
    padding: 16,
  },
  profilesBackButton: {
    marginRight: 16,
  },
  profilesTitle: {
    fontSize: 24,
    fontWeight: 'bold',
  },
  suggestionGrid: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    justifyContent: 'space-between',
  },
  suggestionItem: {
    width: '48%',
    marginBottom: 16,
  },
  suggestionImage: {
    width: '100%',
    aspectRatio: 1,
    borderTopLeftRadius: 8,
    borderTopRightRadius: 8,
  },
  suggestionInfo: {
    padding: 8,
  },
  suggestionText: {
    fontSize: 14,
    marginBottom: 4,
  },
  profilesDarkModeToggle: {
    position: 'absolute',
    top: 16,
    right: 16,
    zIndex: 1,
  },
  profilesPerfilImage: {
    width: '100%',
    height: '100%',
  },
});




//Profiles


export const styles = StyleSheet.create({
  container: {
    flex: 1,
    paddingTop: Platform.OS === 'android' ? StatusBar.currentHeight : 0,
    backgroundColor: '#f0f8ff', // Color de fondo bonito
  },
  scrollView: {
    flexGrow: 1,
  },
  contentContainer: {
    flexGrow: 1,
    justifyContent: 'center',
    padding: 20,
  },
  innerContainer: {
    width: '100%',
    maxWidth: 400,
    alignSelf: 'center',
  },
  title: {
    fontSize: 28,
    fontWeight: 'bold',
    color: '#1A202C',
    textAlign: 'center',
    marginBottom: 8,
  },
  subtitle: {
    fontSize: 16,
    color: '#4A5568',
    textAlign: 'center',
    marginBottom: 24,
  },
  inputContainerSession: {
    marginBottom: 16,
    position: 'relative',
  },
  inputSession: {
    backgroundColor: 'white',
    paddingHorizontal: 16,
    paddingVertical: 12,
    borderRadius: 8,
    fontSize: 16,
    borderWidth: 1,
    borderColor: '#E2E8F0',
  },
  eyeIcon: {
    position: 'absolute',
    right: 16,
    top: 12,
  },
  rememberForgotContainer: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    marginBottom: 24,
  },
  rememberMeContainer: {
    flexDirection: 'row',
    alignItems: 'center',
  },
  checkbox: {
    width: 20,
    height: 20,
    borderRadius: 4,
    borderWidth: 2,
    borderColor: '#A0AEC0',
    marginRight: 8,
    justifyContent: 'center',
    alignItems: 'center',
  },
  checkboxChecked: {
    backgroundColor: '#4299E1',
    borderColor: '#4299E1',
  },
  rememberMeText: {
    fontSize: 14,
    color: '#4A5568',
  },
  forgotPasswordText: {
    fontSize: 14,
    color: '#4299E1',
  },
  loginButton: {
    backgroundColor: '#4299E1',
    paddingVertical: 12,
    borderRadius: 8,
    alignItems: 'center',
  },
  loginButtonText: {
    color: 'white',
    fontSize: 16,
    fontWeight: 'bold',
  },
  registerContainer: {
    flexDirection: 'row',
    justifyContent: 'center',
    alignItems: 'center',
    marginTop: 16,
  },
  registerText: {
    fontSize: 14,
    color: '#4A5568',
    marginRight: 4,
  },
  registerButtonText: {
    fontSize: 14,
    color: '#4299E1',
    fontWeight: 'bold',
  },
  header: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    padding: 16,
    borderRadius: 10, // Bordes redondeados
  },
  headerTitle: {
    fontSize: 18,
    fontWeight: '600',
  },
  iconContainer: {
    flexDirection: 'row',
    alignItems: 'center',
  },
  addButton: {
    padding: 8,
    borderRadius: 20,
  },
  main: {
    flex: 1,
  },
  section: {
    marginBottom: 20,
    paddingHorizontal: 16,
  },
  sectionTitle: {
    fontSize: 30,
    fontWeight: '600',
    marginBottom: 30,
  },
  profileGrid: {
    flexDirection: 'column', // Alinea los elementos verticalmente
    justifyContent: 'space-between', // Espaciado entre los perfiles
    width: '100%', // Ocupa todo el ancho disponible
  },

  recurrentProfileGrid: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    justifyContent: 'space-between',
  },
  
  
  profileButton: {
    width: '100%', // Hace que los botones ocupen todo el ancho disponible
    padding: 20,
    borderRadius: 12, // Bordes redondeados para los rectángulos
    alignItems: 'center',
    marginBottom: 16, // Espacio entre los botones
    shadowColor: '#000', // Color de la sombra
    shadowOffset: { width: 0, height: 4 }, // Desplazamiento de la sombra
    shadowOpacity: 0.3, // Opacidad de la sombra
    shadowRadius: 6, // Radio de la sombra
    elevation: 6, // Sombra adicional para Android
  },

  recurrentProfileButton: {
    width: '49%',
    height: 100,
    borderRadius: 12,
    alignItems: 'center',
    marginBottom: 16,
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 4 },
    shadowOpacity: 0.3,
    shadowRadius: 6,
    elevation: 6,
    position: 'relative',
  },
  
  profileButtonText: {
    fontWeight: '500',
    textAlign: 'center',
    padding: 20,
  },
  suggestionGrid: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    justifyContent: 'space-between',
  },
  suggestionItem: {
    width: '48%',
    height: 270,
    borderRadius: 8,
    marginBottom: 16,
    justifyContent: 'center',
    alignItems: 'center',
  },
  suggestionText: {
    fontSize: 14,
    textAlign: 'center',
  },
  navbar: {
    flexDirection: 'row',
    justifyContent: 'space-around',
    alignItems: 'center',
    padding: 16,
  },
  navButton: {
    padding: 8,
  },
  profileHeader: {
    flexDirection: 'row',
    alignItems: 'center',
    padding: 16,
  },
  backButton: {
    marginRight: 16,
  },
  profileTitle: {
    fontSize: 20,
    fontWeight: '600',
  },
  content: {
    flex: 1,
  },
  userTitleContainer: {
    flexDirection: 'row', // Organiza los elementos en una fila
    justifyContent: 'space-between', // Mueve el botón a la derecha
    alignItems: 'center', // Alinea verticalmente los elementos
    width: '100%', // Asegura que ocupe todo el ancho disponible
    marginBottom: 16,
    paddingHorizontal: 8,
  },
  username: {
    fontSize: 27,
    fontWeight: 'bold',
    marginBottom: 8,
    marginLeft: -25,
    textDecorationLine: 'underline', // Subraya el texto
  },
  editButton: {
    position: 'absolute', // Posiciona el botón dentro del contenedor relativo
    bottom: 10, // Distancia del fondo
    right: 10, // Distancia de la derecha
    padding: 10,
    backgroundColor: '#3B82F6',
    borderRadius: 5,
  },
  
  editButtonText: {
    fontWeight: 'bold',
  },
  userInfoContainer: {
    backgroundColor: '#fff',
    width: '90%', // Define un ancho fijo
    minHeight: 400, // Define una altura mínima que se ajuste al contenido
    marginTop: -50,
    padding: 50,
    borderRadius: 8,
    shadowColor: '#000',
    shadowOpacity: 0.1,
    shadowOffset: { width: 0, height: 2 },
    shadowRadius: 4,
    elevation: 3,
    position: 'relative',
  },
  
  
  
  
  infoLabel: {
    fontSize: 16,
    fontWeight: 'bold',
    marginTop: 30,
    marginRight: 25 , // Desplaza ligeramente hacia la derecha
  },
  infoValue: {
    fontSize: 16,
    marginBottom: 4,
    marginRight: 26 , // Desplaza ligeramente hacia la derecha
  },
  stepTitle: {
    fontSize: 24,
    fontWeight: 'bold',
    marginBottom: 20,
    textAlign: 'center',
  },
  input: {
    width: '100%',
    height: 50,
    borderWidth: 1,
    borderColor: '#ccc',
    borderRadius: 8,
    paddingHorizontal: 10,
    marginBottom: 20,
    fontSize: 16,
  },
  button: {
    backgroundColor: '#488c2b',
    paddingVertical: 12,
    paddingHorizontal: 24,
    borderRadius: 20,
    shadowColor: '#000', // Color de la sombra
    shadowOffset: { width: 0, height: 4 }, // Desplazamiento de la sombra
    shadowOpacity: 0.3, // Opacidad de la sombra
    shadowRadius: 6, // Radio de la sombra
    elevation: 6, // Sombra adicional para Android
  },
  cancelButton: {
    backgroundColor: '#3b4139',
    paddingVertical: 12,
    paddingHorizontal: 30,
    borderRadius: 20,
    shadowColor: '#000', // Color de la sombra
    shadowOffset: { width: 0, height: 4 }, // Desplazamiento de la sombra
    shadowOpacity: 0.3, // Opacidad de la sombra
    shadowRadius: 6, // Radio de la sombra
    elevation: 6, // Sombra adicional para Android
},
  buttonText: {
    color: '#fff',
    fontSize: 18,
    fontWeight: '600',
    textAlign: 'center',
  },
  // Nuevo estilo para un fondo con color minimalista
  minimalBackground: {
    backgroundColor: '#f5f5f5', // Color de fondo minimalista
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
  textArea: {
    width: '100%',
    height: 100,
    borderWidth: 2,
    borderColor: '#ccc',
    borderRadius: 4,
    paddingHorizontal: 10,
    marginBottom: 0,
    fontSize: 16,
    textAlignVertical: 'bottom', // Alinea el texto al borde inferior
    fontWeight: 'bold', // Aplica negrita al texto
  },

  inputContainer: {
    width: '100%',
    marginBottom: 0,
  },

  createProfileContainer: {
    width: '100%',
    padding: 30,
    justifyContent: 'center', // Centra el contenido verticalmente
    flex: 1, // Ocupa todo el espacio disponible
},
backgroundImage: {
  flex: 1, // Ocupa todo el espacio disponible
  width: '100%', // Asegura que cubra todo el ancho
  height: '100%', // Asegura que cubra toda la altura
  justifyContent: 'center', // Centra el contenido
  alignItems: 'center', // Centra el contenido
},

  backgroundContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
  centeredContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: 'rgba(14, 231, 79, 0.38)', // Fondo opcional para contraste
    padding: 16,
    width: '100%', // Asegura que cubra todo el ancho
    height: '100%', // Asegura que cubra toda la altura
    
  },
    
  messageText: {
    fontSize: 24,
    fontWeight: 'bold',
    color: '#ffffff', // Cambia el color según tu diseño
  },
  profileImageBackground: {
    justifyContent: 'center',
    alignItems: 'center',
    borderRadius: 12,
    overflow: 'hidden',
    position: 'absolute',
    top: 0,
    left: 0,
    flex:1,
    resizeMode:'cover',
  },
  perfilItem: {
    flexDirection: 'column',
    marginBottom: 15,
    borderRadius: 15,
    padding: 30,
    backgroundColor: '#fff', // O el color que tengas para el perfil
    shadowColor: '#000', // Color de la sombra
    shadowOffset: { width: 0, height: 2 }, // Desplazamiento de la sombra
    shadowOpacity: 0.25, // Opacidad de la sombra
    shadowRadius: 3.5, // Radio de la sombra
    elevation: 5, // Sombra para Android
  },
  perfilNombre: {
    position: 'absolute', // Coloca el nombre en una posición absoluta dentro de su contenedor
    top: 0, // Pegado al borde superior
    left: 0, // Pegado al borde izquierdo
    right: '75%', // Limita el tamaño del área a un porcentaje (puedes ajustar este valor)
    bottom: 0, // Pegado al borde inferior
    backgroundColor: '#007bff',
    color: 'white',
    padding: 20, // Aumenta el padding para hacer el área del nombre más grande
    fontWeight: 'bold',
    minWidth: 100, // Aumenta el tamaño mínimo del área del nombre
    textAlign: 'center', // Centra el texto horizontalmente
    justifyContent: 'center', // Centra el contenido verticalmente (se necesita un contenedor flex)
    alignItems: 'center', // Alinea el texto verticalmente (en caso de que haya más contenido)
    display: 'flex', // Asegura que se pueda aplicar el centrado flex
  },

  perfilDescripcion: {
    padding: 20, // Aumenta el padding para darle más espacio a la descripción
    flexGrow: 1, // Permite que la descripción ocupe el espacio restante
    marginLeft: '35%', // Alinea la descripción al lado derecho del área de nombre (para evitar que se sobreponga)
    borderRadius: 15, // Redondea los bordes de la descripción
  },
  perfilesLista: {
    flexDirection: 'column',
    gap: 20, // Aumenta el espacio entre los elementos
  },

  profileImage: {
    width: 70, // Tamaño de la imagen
    height: 70, // Tamaño de la imagen
    borderRadius: 50, // Borde redondeado para hacer la imagen circular
    marginRight: -40, // Espaciado a la derecha de la imagen
    borderWidth: 2, // Ancho del borde del marco
    borderColor: '#3B82F6', // Color del borde (puedes cambiarlo a cualquier color que prefieras)
  },
  errorText: {

    color: 'red',

    fontSize: 16,

    textAlign: 'center',

    marginTop: 20,

  },
  profilesContainer: {
    flex: 1,
  },
  profilesMain: {
    flex: 1,
  },
  profilesSection: {
    padding: 20,
  },
  profilesSectionTitle: {
    fontSize: 24,
    fontWeight: 'bold',
    marginBottom: 15,
  },
  profilesPerfilItem: {
    flexDirection: 'row',
    marginBottom: 15,
    borderRadius: 15,
    overflow: 'hidden',
    borderWidth: 1,
  },
  profilesPerfilNombre: {
    width: 120,
    height: 120,
    justifyContent: 'flex-end',
  },
  profilesPerfilNombreOverlay: {
    padding: 10,
  },
  profilesPerfilNombreText: {
    fontSize: 18,
    fontWeight: 'bold',
  },
  profilesPerfilDescripcion: {
    flex: 1,
    padding: 10,
    justifyContent: 'center',
  },
  profilesHeader: {
    flexDirection: 'row',
    alignItems: 'center',
    padding: 20,
  },
  profilesBackButton: {
    marginRight: 15,
  },
  profilesTitle: {
    fontSize: 24,
    fontWeight: 'bold',
  },
  profilesProductItem: {
    padding: 15,
    marginBottom: 10,
    borderRadius: 10,
    borderWidth: 1,
  },
  profilesDarkModeToggle: {
    position: 'absolute',
    top: 20,
    right: 20,
    zIndex: 1,
  },



  


});