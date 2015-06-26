.class Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$3;
.super Lae/javax/xml/bind/JAXBIntrospector;
.source "JAXBContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->createJAXBIntrospector()Lae/javax/xml/bind/JAXBIntrospector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)V
    .locals 0

    .prologue
    .line 786
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$3;->this$0:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    invoke-direct {p0}, Lae/javax/xml/bind/JAXBIntrospector;-><init>()V

    return-void
.end method


# virtual methods
.method public getElementName(Ljava/lang/Object;)Ljavax/xml/namespace/QName;
    .locals 2
    .param p1, "jaxbElement"    # Ljava/lang/Object;

    .prologue
    .line 793
    :try_start_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$3;->this$0:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    invoke-virtual {v1, p1}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getElementName(Ljava/lang/Object;)Ljavax/xml/namespace/QName;
    :try_end_0
    .catch Lae/javax/xml/bind/JAXBException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 795
    :goto_0
    return-object v1

    .line 794
    :catch_0
    move-exception v0

    .line 795
    .local v0, "e":Lae/javax/xml/bind/JAXBException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isElement(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 788
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$3;->getElementName(Ljava/lang/Object;)Ljavax/xml/namespace/QName;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
