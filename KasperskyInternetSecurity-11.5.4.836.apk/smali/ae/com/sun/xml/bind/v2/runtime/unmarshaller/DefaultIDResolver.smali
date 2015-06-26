.class final Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DefaultIDResolver;
.super Lae/com/sun/xml/bind/IDResolver;
.source "DefaultIDResolver.java"


# instance fields
.field private idmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lae/com/sun/xml/bind/IDResolver;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DefaultIDResolver;->idmap:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DefaultIDResolver;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DefaultIDResolver;

    .prologue
    .line 57
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DefaultIDResolver;->idmap:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public bind(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 69
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DefaultIDResolver;->idmap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DefaultIDResolver;->idmap:Ljava/util/HashMap;

    .line 70
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DefaultIDResolver;->idmap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public resolve(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/concurrent/Callable;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "targetType"    # Ljava/lang/Class;

    .prologue
    .line 75
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DefaultIDResolver$1;

    invoke-direct {v0, p0, p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DefaultIDResolver$1;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DefaultIDResolver;Ljava/lang/String;)V

    return-object v0
.end method

.method public startDocument(Lae/javax/xml/bind/ValidationEventHandler;)V
    .locals 1
    .param p1, "eventHandler"    # Lae/javax/xml/bind/ValidationEventHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DefaultIDResolver;->idmap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DefaultIDResolver;->idmap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 65
    :cond_0
    return-void
.end method
