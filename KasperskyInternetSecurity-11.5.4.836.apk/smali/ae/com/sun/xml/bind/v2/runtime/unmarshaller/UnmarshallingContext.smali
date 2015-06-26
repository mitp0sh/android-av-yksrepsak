.class public final Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;
.super Lae/com/sun/xml/bind/v2/runtime/Coordinator;
.source "UnmarshallingContext.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor$TextPredictor;
.implements Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;
.implements Lae/javax/xml/bind/ValidationEventHandler;
.implements Ljavax/xml/namespace/NamespaceContext;
.implements Lorg/xml/sax/ErrorHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$1;,
        Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$ExpectedTypeRootLoader;,
        Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$DefaultRootLoader;,
        Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$Factory;,
        Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DEFAULT_ROOT_LOADER:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

.field private static final DUMMY_INSTANCE:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;

.field private static final EXPECTED_TYPE_ROOT_LOADER:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;


# instance fields
.field private aborted:Z

.field private final assoc:Lae/com/sun/xml/bind/v2/runtime/AssociationMap;

.field public classLoader:Ljava/lang/ClassLoader;
    .annotation build Lcom/sun/istack/Nullable;
    .end annotation
.end field

.field public classResolver:Lae/com/sun/xml/bind/api/ClassResolver;
    .annotation build Lcom/sun/istack/Nullable;
    .end annotation
.end field

.field private current:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

.field private currentElement:Ljava/lang/Object;

.field private environmentNamespaceContext:Ljavax/xml/namespace/NamespaceContext;

.field private expectedType:Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

.field private final factories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private idResolver:Lae/com/sun/xml/bind/IDResolver;

.field private isInplaceMode:Z

.field private isUnmarshalInProgress:Z

.field private locator:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;
    .annotation build Lcom/sun/istack/NotNull;
    .end annotation
.end field

.field private nsBind:[Ljava/lang/String;

.field private nsLen:I

.field public final parent:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;

.field private patchers:[Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Patcher;

.field private patchersLen:I

.field private result:Ljava/lang/Object;

.field private final root:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

.field private scanner:Lae/com/sun/xml/bind/unmarshaller/InfosetScanner;

.field private scopeTop:I

.field private scopes:[Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 92
    const-class v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->$assertionsDisabled:Z

    .line 108
    new-instance v0, Lorg/xml/sax/helpers/LocatorImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    .line 109
    .local v0, "loc":Lorg/xml/sax/helpers/LocatorImpl;
    invoke-virtual {v0, v2}, Lorg/xml/sax/helpers/LocatorImpl;->setPublicId(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0, v2}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0, v3}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    .line 112
    invoke-virtual {v0, v3}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    .line 113
    new-instance v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorExWrapper;

    invoke-direct {v1, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorExWrapper;-><init>(Lorg/xml/sax/Locator;)V

    sput-object v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->DUMMY_INSTANCE:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;

    .line 1038
    new-instance v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$DefaultRootLoader;

    invoke-direct {v1, v2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$DefaultRootLoader;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$1;)V

    sput-object v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->DEFAULT_ROOT_LOADER:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    .line 1039
    new-instance v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$ExpectedTypeRootLoader;

    invoke-direct {v1, v2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$ExpectedTypeRootLoader;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$1;)V

    sput-object v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->EXPECTED_TYPE_ROOT_LOADER:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    return-void

    .line 92
    .end local v0    # "loc":Lorg/xml/sax/helpers/LocatorImpl;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;Lae/com/sun/xml/bind/v2/runtime/AssociationMap;)V
    .locals 5
    .param p1, "_parent"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;
    .param p2, "assoc"    # Lae/com/sun/xml/bind/v2/runtime/AssociationMap;

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 337
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/Coordinator;-><init>()V

    .line 116
    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->DUMMY_INSTANCE:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->locator:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;

    .line 145
    const/4 v1, 0x1

    iput-boolean v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->isUnmarshalInProgress:Z

    .line 146
    iput-boolean v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->aborted:Z

    .line 424
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->factories:Ljava/util/Map;

    .line 732
    iput-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->patchers:[Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Patcher;

    .line 733
    iput v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->patchersLen:I

    .line 817
    new-array v1, v4, [Ljava/lang/String;

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->nsBind:[Ljava/lang/String;

    .line 818
    iput v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->nsLen:I

    .line 954
    new-array v1, v4, [Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->scopes:[Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;

    .line 958
    iput v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->scopeTop:I

    .line 961
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->scopes:[Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 962
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->scopes:[Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;

    new-instance v2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;

    invoke-direct {v2, p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;)V

    aput-object v2, v1, v0

    .line 961
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 338
    :cond_0
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->parent:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;

    .line 339
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->assoc:Lae/com/sun/xml/bind/v2/runtime/AssociationMap;

    .line 340
    new-instance v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    invoke-direct {v1, p0, v3, v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$1;)V

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->current:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->root:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    .line 341
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->allocateMoreStates()V

    .line 342
    return-void
.end method

.method private _startElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V
    .locals 3
    .param p1, "tagName"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 492
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->assoc:Lae/com/sun/xml/bind/v2/runtime/AssociationMap;

    if-eqz v1, :cond_0

    .line 493
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->scanner:Lae/com/sun/xml/bind/unmarshaller/InfosetScanner;

    invoke-interface {v1}, Lae/com/sun/xml/bind/unmarshaller/InfosetScanner;->getCurrentElement()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->currentElement:Ljava/lang/Object;

    .line 495
    :cond_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->current:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    iget-object v0, v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    .line 496
    .local v0, "h":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->current:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    # invokes: Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->push()V
    invoke-static {v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->access$500(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;)V

    .line 499
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->current:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    invoke-virtual {v0, v1, p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;->childElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V

    .line 500
    sget-boolean v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->current:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    iget-object v1, v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 502
    :cond_1
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->current:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    iget-object v1, v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->current:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    invoke-virtual {v1, v2, p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;->startElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V

    .line 503
    return-void
.end method

.method static synthetic access$000(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;)V
    .locals 0
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    .prologue
    .line 92
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->allocateMoreStates()V

    return-void
.end method

.method static synthetic access$100(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;)I
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    .prologue
    .line 92
    iget v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->nsLen:I

    return v0
.end method

.method static synthetic access$1002(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 92
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->result:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1100(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    .prologue
    .line 92
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->expectedType:Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    return-object v0
.end method

.method static synthetic access$202(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .locals 0
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;
    .param p1, "x1"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    .prologue
    .line 92
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->current:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    return-object p1
.end method

.method private addFactory(Ljava/lang/Object;)V
    .locals 7
    .param p1, "factory"    # Ljava/lang/Object;

    .prologue
    .line 442
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 444
    .local v3, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "create"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 442
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 446
    :cond_1
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    if-gtz v5, :cond_0

    .line 449
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    .line 451
    .local v4, "type":Ljava/lang/Class;
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->factories:Ljava/util/Map;

    new-instance v6, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$Factory;

    invoke-direct {v6, p1, v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$Factory;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 453
    .end local v3    # "m":Ljava/lang/reflect/Method;
    .end local v4    # "type":Ljava/lang/Class;
    :cond_2
    return-void
.end method

.method private allocateMoreStates()V
    .locals 4

    .prologue
    .line 397
    sget-boolean v3, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->current:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    invoke-static {v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->access$400(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 399
    :cond_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->current:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    .line 400
    .local v1, "s":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    const/4 v0, 0x0

    .local v0, "i":I
    move-object v2, v1

    .end local v1    # "s":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .local v2, "s":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    :goto_0
    const/16 v3, 0x8

    if-ge v0, v3, :cond_1

    .line 401
    new-instance v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$1;)V

    .line 400
    .end local v2    # "s":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .restart local v1    # "s":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    add-int/lit8 v0, v0, 0x1

    move-object v2, v1

    .end local v1    # "s":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .restart local v2    # "s":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    goto :goto_0

    .line 402
    :cond_1
    return-void
.end method

.method private getAllPrefixesInList(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 896
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 898
    .local v0, "a":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 899
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 900
    :cond_0
    const-string v2, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 901
    const-string v2, "xml"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 915
    :cond_1
    :goto_0
    return-object v0

    .line 904
    :cond_2
    const-string v2, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 905
    const-string v2, "xmlns"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 909
    :cond_3
    iget v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->nsLen:I

    add-int/lit8 v1, v2, -0x2

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 910
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->nsBind:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 911
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->nsBind:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->nsBind:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 913
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->nsBind:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 909
    :cond_4
    add-int/lit8 v1, v1, -0x2

    goto :goto_1
.end method

.method public static getInstance()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;
    .locals 1

    .prologue
    .line 1203
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/Coordinator;->_getInstance()Lae/com/sun/xml/bind/v2/runtime/Coordinator;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    return-object v0
.end method

.method private getPrefixList(I)[Ljava/lang/String;
    .locals 5
    .param p1, "startIndex"    # I

    .prologue
    .line 878
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->current:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->numNsDecl:I
    invoke-static {v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->access$700(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;)I

    move-result v3

    sub-int/2addr v3, p1

    div-int/lit8 v2, v3, 0x2

    .line 879
    .local v2, "size":I
    new-array v1, v2, [Ljava/lang/String;

    .line 880
    .local v1, "r":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 881
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->nsBind:[Ljava/lang/String;

    mul-int/lit8 v4, v0, 0x2

    add-int/2addr v4, p1

    aget-object v3, v3, v4

    aput-object v3, v1, v0

    .line 880
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 882
    :cond_0
    return-object v1
.end method

.method private resolveNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 834
    const-string v1, "xml"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 835
    const-string v1, "http://www.w3.org/XML/1998/namespace"

    .line 852
    :goto_0
    return-object v1

    .line 837
    :cond_0
    iget v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->nsLen:I

    add-int/lit8 v0, v1, -0x2

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 838
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->nsBind:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 839
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->nsBind:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    goto :goto_0

    .line 837
    :cond_1
    add-int/lit8 v0, v0, -0x2

    goto :goto_1

    .line 842
    :cond_2
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->environmentNamespaceContext:Ljavax/xml/namespace/NamespaceContext;

    if-eqz v1, :cond_3

    .line 844
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->environmentNamespaceContext:Ljavax/xml/namespace/NamespaceContext;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavax/xml/namespace/NamespaceContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 848
    :cond_3
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 849
    const-string v1, ""

    goto :goto_0

    .line 852
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private runPatchers()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 757
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->patchers:[Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Patcher;

    if-eqz v1, :cond_0

    .line 758
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->patchersLen:I

    if-ge v0, v1, :cond_0

    .line 759
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->patchers:[Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Patcher;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Patcher;->run()V

    .line 760
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->patchers:[Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Patcher;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 758
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 763
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public addPatcher(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Patcher;)V
    .locals 4
    .param p1, "job"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Patcher;

    .prologue
    const/4 v3, 0x0

    .line 745
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->patchers:[Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Patcher;

    if-nez v1, :cond_0

    .line 746
    const/16 v1, 0x20

    new-array v1, v1, [Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Patcher;

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->patchers:[Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Patcher;

    .line 747
    :cond_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->patchers:[Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Patcher;

    array-length v1, v1

    iget v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->patchersLen:I

    if-ne v1, v2, :cond_1

    .line 748
    iget v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->patchersLen:I

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Patcher;

    .line 749
    .local v0, "buf":[Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Patcher;
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->patchers:[Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Patcher;

    iget v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->patchersLen:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 750
    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->patchers:[Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Patcher;

    .line 752
    .end local v0    # "buf":[Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Patcher;
    :cond_1
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->patchers:[Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Patcher;

    iget v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->patchersLen:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->patchersLen:I

    aput-object p1, v1, v2

    .line 753
    return-void
.end method

.method public addToIdTable(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 792
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->current:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    iget-object v0, v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->target:Ljava/lang/Object;

    .line 793
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 794
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->current:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    iget-object v1, v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->prev:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    iget-object v0, v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->target:Ljava/lang/Object;

    .line 795
    :cond_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->idResolver:Lae/com/sun/xml/bind/IDResolver;

    invoke-virtual {v1, p1, v0}, Lae/com/sun/xml/bind/IDResolver;->bind(Ljava/lang/String;Ljava/lang/Object;)V

    .line 796
    return-object p1
.end method

.method clearResult()V
    .locals 1

    .prologue
    .line 594
    iget-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->isUnmarshalInProgress:Z

    if-eqz v0, :cond_0

    .line 595
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 597
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->result:Ljava/lang/Object;

    .line 598
    return-void
.end method

.method public clearStates()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 405
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->current:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    .line 406
    .local v0, "last":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    :goto_0
    # getter for: Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->access$400(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    move-result-object v1

    if-eqz v1, :cond_0

    # getter for: Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->access$400(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    move-result-object v0

    goto :goto_0

    .line 407
    :cond_0
    :goto_1
    iget-object v1, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->prev:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    if-eqz v1, :cond_1

    .line 408
    iput-object v2, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    .line 409
    const/4 v1, 0x0

    iput-boolean v1, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->nil:Z

    .line 410
    iput-object v2, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->receiver:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;

    .line 411
    iput-object v2, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->intercepter:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Intercepter;

    .line 412
    iput-object v2, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->elementDefaultValue:Ljava/lang/String;

    .line 413
    iput-object v2, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->target:Ljava/lang/Object;

    .line 414
    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->prev:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    .line 415
    # getter for: Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->access$400(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    move-result-object v1

    iput-object v2, v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->prev:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    .line 416
    # setter for: Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    invoke-static {v0, v2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->access$402(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    goto :goto_1

    .line 418
    :cond_1
    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->current:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    .line 419
    return-void
.end method

.method public createInstance(Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;)Ljava/lang/Object;
    .locals 5
    .param p1, "beanInfo"    # Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 618
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->factories:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 619
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->factories:Ljava/util/Map;

    iget-object v3, p1, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->jaxbType:Ljava/lang/Class;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$Factory;

    .line 620
    .local v1, "factory":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$Factory;
    if-eqz v1, :cond_0

    .line 621
    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$Factory;->createInstance()Ljava/lang/Object;

    move-result-object v2

    .line 632
    .end local v1    # "factory":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$Factory;
    :goto_0
    return-object v2

    .line 624
    :cond_0
    :try_start_0
    invoke-virtual {p1, p0}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->createInstance(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    goto :goto_0

    .line 625
    :catch_0
    move-exception v0

    .line 626
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create an instance of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->jaxbType:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v4}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;->reportError(Ljava/lang/String;Ljava/lang/Exception;Z)V

    .line 632
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 627
    :catch_1
    move-exception v0

    .line 628
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create an instance of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->jaxbType:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v4}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;->reportError(Ljava/lang/String;Ljava/lang/Exception;Z)V

    goto :goto_1

    .line 629
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    .line 630
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create an instance of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->jaxbType:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v4}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;->reportError(Ljava/lang/String;Ljava/lang/Exception;Z)V

    goto :goto_1
.end method

.method public createInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 605
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->factories:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 606
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->factories:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$Factory;

    .line 607
    .local v0, "factory":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$Factory;
    if-eqz v0, :cond_0

    .line 608
    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$Factory;->createInstance()Ljava/lang/Object;

    move-result-object v1

    .line 610
    .end local v0    # "factory":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$Factory;
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p1}, Lae/com/sun/xml/bind/v2/ClassFactory;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 546
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->runPatchers()V

    .line 547
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->idResolver:Lae/com/sun/xml/bind/IDResolver;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/IDResolver;->endDocument()V

    .line 549
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->isUnmarshalInProgress:Z

    .line 550
    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->currentElement:Ljava/lang/Object;

    .line 551
    sget-object v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->DUMMY_INSTANCE:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->locator:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;

    .line 552
    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->environmentNamespaceContext:Ljavax/xml/namespace/NamespaceContext;

    .line 555
    sget-boolean v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->root:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->current:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 557
    :cond_0
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->resetThreadAffinity()V

    .line 558
    return-void
.end method

.method public final endElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V
    .locals 5
    .param p1, "tagName"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 522
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->pushCoordinator()V

    .line 524
    :try_start_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->current:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    .line 527
    .local v0, "child":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    iget-object v4, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    invoke-virtual {v4, v0, p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;->leaveElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V

    .line 530
    iget-object v3, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->target:Ljava/lang/Object;

    .line 531
    .local v3, "target":Ljava/lang/Object;
    iget-object v2, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->receiver:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;

    .line 532
    .local v2, "recv":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;
    iget-object v1, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->intercepter:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Intercepter;

    .line 533
    .local v1, "intercepter":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Intercepter;
    # invokes: Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->pop()V
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->access$600(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;)V

    .line 536
    if-eqz v1, :cond_0

    .line 537
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->current:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    invoke-interface {v1, v4, v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Intercepter;->intercept(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 538
    :cond_0
    if-eqz v2, :cond_1

    .line 539
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->current:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    invoke-interface {v2, v4, v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;->receive(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    :cond_1
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->popCoordinator()V

    .line 543
    return-void

    .line 541
    .end local v0    # "child":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .end local v1    # "intercepter":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Intercepter;
    .end local v2    # "recv":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;
    .end local v3    # "target":Ljava/lang/Object;
    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->popCoordinator()V

    throw v4
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 831
    iget v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->nsLen:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->nsLen:I

    .line 832
    return-void
.end method

.method public endScope(I)V
    .locals 4
    .param p1, "frameSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1005
    :goto_0
    if-lez p1, :cond_0

    .line 1006
    :try_start_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->scopes:[Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;

    iget v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->scopeTop:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;->finish()V

    .line 1005
    add-int/lit8 p1, p1, -0x1

    iget v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->scopeTop:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->scopeTop:I
    :try_end_0
    .catch Lae/com/sun/xml/bind/api/AccessorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1007
    :catch_0
    move-exception v0

    .line 1008
    .local v0, "e":Lae/com/sun/xml/bind/api/AccessorException;
    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->handleError(Ljava/lang/Exception;)V

    .line 1012
    :goto_1
    if-lez p1, :cond_0

    .line 1013
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->scopes:[Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;

    iget v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->scopeTop:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->scopeTop:I

    new-instance v3, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;

    invoke-direct {v3, p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;)V

    aput-object v3, v1, v2

    .line 1012
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 1015
    .end local v0    # "e":Lae/com/sun/xml/bind/api/AccessorException;
    :cond_0
    return-void
.end method

.method public errorUnresolvedIDREF(Ljava/lang/Object;Ljava/lang/String;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;)V
    .locals 5
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "idref"    # Ljava/lang/String;
    .param p3, "loc"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 715
    new-instance v0, Lae/javax/xml/bind/helpers/ValidationEventImpl;

    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Messages;->UNRESOLVED_IDREF:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Messages;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, v2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;->getLocation()Lae/javax/xml/bind/ValidationEventLocator;

    move-result-object v2

    invoke-direct {v0, v4, v1, v2}, Lae/javax/xml/bind/helpers/ValidationEventImpl;-><init>(ILjava/lang/String;Lae/javax/xml/bind/ValidationEventLocator;)V

    invoke-virtual {p0, v0, v4}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->handleEvent(Lae/javax/xml/bind/ValidationEvent;Z)V

    .line 719
    return-void
.end method

.method public expectText()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 565
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->current:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    iget-boolean v0, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;->expectText:Z

    return v0
.end method

.method public getAllDeclaredPrefixes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 874
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getPrefixList(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;
    .locals 0

    .prologue
    .line 577
    return-object p0
.end method

.method public getCurrentExpectedAttributes()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljavax/xml/namespace/QName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1230
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->pushCoordinator()V

    .line 1232
    :try_start_0
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getCurrentState()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    move-result-object v1

    .line 1233
    .local v1, "s":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    iget-object v0, v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    .line 1234
    .local v0, "l":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;->getExpectedAttributes()Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1236
    :goto_0
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->popCoordinator()V

    return-object v2

    .line 1234
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1236
    .end local v0    # "l":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    .end local v1    # "s":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->popCoordinator()V

    throw v2
.end method

.method public getCurrentExpectedElements()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljavax/xml/namespace/QName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1213
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->pushCoordinator()V

    .line 1215
    :try_start_0
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getCurrentState()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    move-result-object v1

    .line 1216
    .local v1, "s":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    iget-object v0, v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    .line 1217
    .local v0, "l":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;->getExpectedChildElements()Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1219
    :goto_0
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->popCoordinator()V

    return-object v2

    .line 1217
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1219
    .end local v0    # "l":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    .end local v1    # "s":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->popCoordinator()V

    throw v2
.end method

.method public getCurrentState()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->current:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    return-object v0
.end method

.method public getInnerPeer()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1145
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->assoc:Lae/com/sun/xml/bind/v2/runtime/AssociationMap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->isInplaceMode:Z

    if-eqz v0, :cond_0

    .line 1146
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->assoc:Lae/com/sun/xml/bind/v2/runtime/AssociationMap;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->currentElement:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/AssociationMap;->getInnerPeer(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1148
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getJAXBContext()Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->parent:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    return-object v0
.end method

.method protected getLocation()Lae/javax/xml/bind/ValidationEventLocator;
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->locator:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;->getLocation()Lae/javax/xml/bind/ValidationEventLocator;

    move-result-object v0

    return-object v0
.end method

.method public getLocator()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->locator:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;

    return-object v0
.end method

.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 939
    if-nez p1, :cond_0

    .line 940
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 941
    :cond_0
    const-string v0, "xmlns"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 942
    const-string v0, "http://www.w3.org/2000/xmlns/"

    .line 944
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->resolveNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNewlyDeclaredPrefixes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->current:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->prev:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->numNsDecl:I
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->access$700(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;)I

    move-result v0

    invoke-direct {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getPrefixList(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObjectFromId(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/concurrent/Callable;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "targetType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 809
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->idResolver:Lae/com/sun/xml/bind/IDResolver;

    invoke-virtual {v0, p1, p2}, Lae/com/sun/xml/bind/IDResolver;->resolve(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/concurrent/Callable;

    move-result-object v0

    return-object v0
.end method

.method public getOuterPeer()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1171
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->assoc:Lae/com/sun/xml/bind/v2/runtime/AssociationMap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->isInplaceMode:Z

    if-eqz v0, :cond_0

    .line 1172
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->assoc:Lae/com/sun/xml/bind/v2/runtime/AssociationMap;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->currentElement:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/AssociationMap;->getOuterPeer(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1174
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPredictor()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor$TextPredictor;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 573
    return-object p0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 919
    if-nez p1, :cond_0

    .line 920
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 921
    :cond_0
    const-string v1, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 922
    const-string v1, "xml"

    .line 935
    :goto_0
    return-object v1

    .line 923
    :cond_1
    const-string v1, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 924
    const-string v1, "xmlns"

    goto :goto_0

    .line 926
    :cond_2
    iget v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->nsLen:I

    add-int/lit8 v0, v1, -0x2

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 927
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->nsBind:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 928
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->nsBind:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->nsBind:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 930
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->nsBind:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_0

    .line 926
    :cond_3
    add-int/lit8 v0, v0, -0x2

    goto :goto_1

    .line 932
    :cond_4
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->environmentNamespaceContext:Ljavax/xml/namespace/NamespaceContext;

    if-eqz v1, :cond_5

    .line 933
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->environmentNamespaceContext:Ljavax/xml/namespace/NamespaceContext;

    invoke-interface {v1, p1}, Ljavax/xml/namespace/NamespaceContext;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 935
    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPrefixes(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 891
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getAllPrefixesInList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/UnmarshalException;
        }
    .end annotation

    .prologue
    .line 584
    iget-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->isUnmarshalInProgress:Z

    if-eqz v0, :cond_0

    .line 585
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 587
    :cond_0
    iget-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->aborted:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->result:Ljava/lang/Object;

    return-object v0

    .line 590
    :cond_1
    new-instance v1, Lae/javax/xml/bind/UnmarshalException;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lae/javax/xml/bind/UnmarshalException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getScope(I)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 1027
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->scopes:[Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;

    iget v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->scopeTop:I

    sub-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getStructureLoader()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;
    .locals 1

    .prologue
    .line 1246
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->current:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    instance-of v0, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;

    if-eqz v0, :cond_0

    .line 1247
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->current:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    check-cast v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;

    .line 1249
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getXMIMEContentType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1193
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->current:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    iget-object v0, v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->target:Ljava/lang/Object;

    .line 1194
    .local v0, "t":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1195
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getJAXBContext()Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getXMIMEContentType(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public handleError(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 688
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->handleError(Ljava/lang/Exception;Z)V

    .line 689
    return-void
.end method

.method public handleError(Ljava/lang/Exception;Z)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "canRecover"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 692
    new-instance v0, Lae/javax/xml/bind/helpers/ValidationEventImpl;

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->locator:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;

    invoke-interface {v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;->getLocation()Lae/javax/xml/bind/ValidationEventLocator;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p1}, Lae/javax/xml/bind/helpers/ValidationEventImpl;-><init>(ILjava/lang/String;Lae/javax/xml/bind/ValidationEventLocator;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->handleEvent(Lae/javax/xml/bind/ValidationEvent;Z)V

    .line 693
    return-void
.end method

.method public handleError(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 696
    new-instance v0, Lae/javax/xml/bind/helpers/ValidationEventImpl;

    const/4 v1, 0x1

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->locator:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;

    invoke-interface {v2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;->getLocation()Lae/javax/xml/bind/ValidationEventLocator;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lae/javax/xml/bind/helpers/ValidationEventImpl;-><init>(ILjava/lang/String;Lae/javax/xml/bind/ValidationEventLocator;)V

    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->handleEvent(Lae/javax/xml/bind/ValidationEvent;)Z

    .line 697
    return-void
.end method

.method public handleEvent(Lae/javax/xml/bind/ValidationEvent;Z)V
    .locals 8
    .param p1, "event"    # Lae/javax/xml/bind/ValidationEvent;
    .param p2, "canRecover"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 654
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->parent:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;

    invoke-virtual {v2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->getEventHandler()Lae/javax/xml/bind/ValidationEventHandler;

    move-result-object v0

    .line 656
    .local v0, "eventHandler":Lae/javax/xml/bind/ValidationEventHandler;
    invoke-interface {v0, p1}, Lae/javax/xml/bind/ValidationEventHandler;->handleEvent(Lae/javax/xml/bind/ValidationEvent;)Z

    move-result v1

    .line 660
    .local v1, "recover":Z
    if-nez v1, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->aborted:Z

    .line 662
    :cond_0
    if-eqz p2, :cond_1

    if-nez v1, :cond_2

    .line 663
    :cond_1
    new-instance v2, Lcom/sun/istack/SAXParseException2;

    invoke-interface {p1}, Lae/javax/xml/bind/ValidationEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->locator:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;

    new-instance v5, Lae/javax/xml/bind/UnmarshalException;

    invoke-interface {p1}, Lae/javax/xml/bind/ValidationEvent;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1}, Lae/javax/xml/bind/ValidationEvent;->getLinkedException()Ljava/lang/Throwable;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lae/javax/xml/bind/UnmarshalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/istack/SAXParseException2;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    throw v2

    .line 667
    :cond_2
    return-void
.end method

.method public handleEvent(Lae/javax/xml/bind/ValidationEvent;)Z
    .locals 3
    .param p1, "event"    # Lae/javax/xml/bind/ValidationEvent;

    .prologue
    .line 672
    :try_start_0
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->parent:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;

    invoke-virtual {v2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->getEventHandler()Lae/javax/xml/bind/ValidationEventHandler;

    move-result-object v2

    invoke-interface {v2, p1}, Lae/javax/xml/bind/ValidationEventHandler;->handleEvent(Lae/javax/xml/bind/ValidationEvent;)Z

    move-result v1

    .line 673
    .local v1, "recover":Z
    if-nez v1, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->aborted:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    .end local v1    # "recover":Z
    :cond_0
    :goto_0
    return v1

    .line 675
    :catch_0
    move-exception v0

    .line 678
    .local v0, "re":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public recordInnerPeer(Ljava/lang/Object;)V
    .locals 2
    .param p1, "innerPeer"    # Ljava/lang/Object;

    .prologue
    .line 1133
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->assoc:Lae/com/sun/xml/bind/v2/runtime/AssociationMap;

    if-eqz v0, :cond_0

    .line 1134
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->assoc:Lae/com/sun/xml/bind/v2/runtime/AssociationMap;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->currentElement:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lae/com/sun/xml/bind/v2/runtime/AssociationMap;->addInner(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1135
    :cond_0
    return-void
.end method

.method public recordOuterPeer(Ljava/lang/Object;)V
    .locals 2
    .param p1, "outerPeer"    # Ljava/lang/Object;

    .prologue
    .line 1159
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->assoc:Lae/com/sun/xml/bind/v2/runtime/AssociationMap;

    if-eqz v0, :cond_0

    .line 1160
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->assoc:Lae/com/sun/xml/bind/v2/runtime/AssociationMap;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->currentElement:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lae/com/sun/xml/bind/v2/runtime/AssociationMap;->addOuter(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1161
    :cond_0
    return-void
.end method

.method public reset(Lae/com/sun/xml/bind/unmarshaller/InfosetScanner;ZLae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;Lae/com/sun/xml/bind/IDResolver;)V
    .locals 0
    .param p1, "scanner"    # Lae/com/sun/xml/bind/unmarshaller/InfosetScanner;
    .param p2, "isInplaceMode"    # Z
    .param p3, "expectedType"    # Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    .param p4, "idResolver"    # Lae/com/sun/xml/bind/IDResolver;

    .prologue
    .line 345
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->scanner:Lae/com/sun/xml/bind/unmarshaller/InfosetScanner;

    .line 346
    iput-boolean p2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->isInplaceMode:Z

    .line 347
    iput-object p3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->expectedType:Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    .line 348
    iput-object p4, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->idResolver:Lae/com/sun/xml/bind/IDResolver;

    .line 349
    return-void
.end method

.method public selectRootLoader(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    .locals 8
    .param p1, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .param p2, "tag"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 368
    :try_start_0
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getJAXBContext()Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->selectRootLoader(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    move-result-object v4

    .line 369
    .local v4, "l":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    if-eqz v4, :cond_0

    .line 385
    .end local v4    # "l":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    :goto_0
    return-object v4

    .line 371
    .restart local v4    # "l":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    :cond_0
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->classResolver:Lae/com/sun/xml/bind/api/ClassResolver;

    if-eqz v5, :cond_1

    .line 372
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->classResolver:Lae/com/sun/xml/bind/api/ClassResolver;

    iget-object v6, p2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->uri:Ljava/lang/String;

    iget-object v7, p2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->local:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lae/com/sun/xml/bind/api/ClassResolver;->resolveElementName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 373
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_1

    .line 374
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getJAXBContext()Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    move-result-object v5

    invoke-virtual {v5, v1}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->createAugmented(Ljava/lang/Class;)Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    move-result-object v3

    .line 375
    .local v3, "enhanced":Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
    invoke-virtual {v3, v1}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getBeanInfo(Ljava/lang/Class;)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    move-result-object v0

    .line 376
    .local v0, "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;, "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo<*>;"
    const/4 v5, 0x1

    invoke-virtual {v0, v3, v5}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->getLoader(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Z)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    goto :goto_0

    .line 379
    .end local v0    # "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;, "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo<*>;"
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "enhanced":Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
    .end local v4    # "l":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    :catch_0
    move-exception v2

    .line 380
    .local v2, "e":Ljava/lang/RuntimeException;
    throw v2

    .line 381
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v2

    .line 382
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->handleError(Ljava/lang/Exception;)V

    .line 385
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setFactories(Ljava/lang/Object;)V
    .locals 5
    .param p1, "factoryInstances"    # Ljava/lang/Object;

    .prologue
    .line 427
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->factories:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 428
    if-nez p1, :cond_1

    .line 439
    .end local p1    # "factoryInstances":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 431
    .restart local p1    # "factoryInstances":Ljava/lang/Object;
    :cond_1
    instance-of v4, p1, [Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 432
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "factoryInstances":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 434
    .local v1, "factory":Ljava/lang/Object;
    invoke-direct {p0, v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->addFactory(Ljava/lang/Object;)V

    .line 432
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 437
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v1    # "factory":Ljava/lang/Object;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .restart local p1    # "factoryInstances":Ljava/lang/Object;
    :cond_2
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->addFactory(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public startDocument(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;Ljavax/xml/namespace/NamespaceContext;)V
    .locals 2
    .param p1, "locator"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;
    .param p2, "nsContext"    # Ljavax/xml/namespace/NamespaceContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 456
    if-eqz p1, :cond_0

    .line 457
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->locator:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;

    .line 458
    :cond_0
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->environmentNamespaceContext:Ljavax/xml/namespace/NamespaceContext;

    .line 460
    const/4 v0, 0x0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->result:Ljava/lang/Object;

    .line 461
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->root:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->current:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    .line 463
    iput v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->patchersLen:I

    .line 464
    iput-boolean v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->aborted:Z

    .line 465
    const/4 v0, 0x1

    iput-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->isUnmarshalInProgress:Z

    .line 466
    iput v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->nsLen:I

    .line 468
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->setThreadAffinity()V

    .line 470
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->expectedType:Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    if-eqz v0, :cond_1

    .line 471
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->root:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->EXPECTED_TYPE_ROOT_LOADER:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    iput-object v1, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    .line 475
    :goto_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->idResolver:Lae/com/sun/xml/bind/IDResolver;

    invoke-virtual {v0, p0}, Lae/com/sun/xml/bind/IDResolver;->startDocument(Lae/javax/xml/bind/ValidationEventHandler;)V

    .line 476
    return-void

    .line 473
    :cond_1
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->root:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->DEFAULT_ROOT_LOADER:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    iput-object v1, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    goto :goto_0
.end method

.method public startElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V
    .locals 1
    .param p1, "tagName"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 479
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->pushCoordinator()V

    .line 481
    :try_start_0
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->_startElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->popCoordinator()V

    .line 485
    return-void

    .line 483
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->popCoordinator()V

    throw v0
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 821
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->nsBind:[Ljava/lang/String;

    array-length v1, v1

    iget v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->nsLen:I

    if-ne v1, v2, :cond_0

    .line 823
    iget v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->nsLen:I

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 824
    .local v0, "n":[Ljava/lang/String;
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->nsBind:[Ljava/lang/String;

    iget v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->nsLen:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 825
    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->nsBind:[Ljava/lang/String;

    .line 827
    .end local v0    # "n":[Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->nsBind:[Ljava/lang/String;

    iget v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->nsLen:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->nsLen:I

    aput-object p1, v1, v2

    .line 828
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->nsBind:[Ljava/lang/String;

    iget v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->nsLen:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->nsLen:I

    aput-object p2, v1, v2

    .line 829
    return-void
.end method

.method public startScope(I)V
    .locals 5
    .param p1, "frameSize"    # I

    .prologue
    const/4 v4, 0x0

    .line 981
    iget v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->scopeTop:I

    add-int/2addr v2, p1

    iput v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->scopeTop:I

    .line 984
    iget v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->scopeTop:I

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->scopes:[Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 985
    iget v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->scopeTop:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->scopes:[Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v1, v2, [Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;

    .line 986
    .local v1, "s":[Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->scopes:[Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->scopes:[Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;

    array-length v3, v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 987
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->scopes:[Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;

    array-length v0, v2

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 988
    new-instance v2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;

    invoke-direct {v2, p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;)V

    aput-object v2, v1, v0

    .line 987
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 989
    :cond_0
    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->scopes:[Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;

    .line 991
    .end local v0    # "i":I
    .end local v1    # "s":[Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;
    :cond_1
    return-void
.end method

.method public text(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "pcdata"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 506
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->current:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    .line 507
    .local v0, "cur":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->pushCoordinator()V

    .line 509
    :try_start_0
    iget-object v1, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->elementDefaultValue:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 510
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 512
    iget-object p1, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->elementDefaultValue:Ljava/lang/String;

    .line 515
    :cond_0
    iget-object v1, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    invoke-virtual {v1, v0, p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;->text(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->popCoordinator()V

    .line 519
    return-void

    .line 517
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->popCoordinator()V

    throw v1
.end method
