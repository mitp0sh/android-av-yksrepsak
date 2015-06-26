.class public final Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFSIterator;
.super Ljava/lang/Object;
.source "Lister.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IDREFSIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

.field private final i:Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;

.field private last:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 0
    .param p1, "i"    # Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;
    .param p2, "context"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    .prologue
    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFSIterator;->i:Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;

    .line 448
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFSIterator;->context:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    .line 449
    return-void
.end method

.method synthetic constructor <init>(Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$1;)V
    .locals 0
    .param p1, "x0"    # Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;
    .param p2, "x1"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .param p3, "x2"    # Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$1;

    .prologue
    .line 441
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFSIterator;-><init>(Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFSIterator;->i:Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFSIterator;->last:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 441
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFSIterator;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 463
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFSIterator;->i:Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;

    invoke-interface {v1}, Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFSIterator;->last:Ljava/lang/Object;

    .line 464
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFSIterator;->context:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    iget-object v1, v1, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->grammar:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFSIterator;->last:Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getBeanInfo(Ljava/lang/Object;Z)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    move-result-object v1

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFSIterator;->last:Ljava/lang/Object;

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFSIterator;->context:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    invoke-virtual {v1, v2, v3}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->getId(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)Ljava/lang/String;

    move-result-object v0

    .line 465
    .local v0, "id":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 466
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFSIterator;->context:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFSIterator;->last:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->errorMissingId(Ljava/lang/Object;)V

    .line 468
    :cond_0
    return-object v0
.end method
