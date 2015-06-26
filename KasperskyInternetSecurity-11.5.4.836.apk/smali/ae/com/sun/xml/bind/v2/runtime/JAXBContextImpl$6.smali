.class Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$6;
.super Lae/com/sun/xml/bind/api/RawAccessor;
.source "JAXBContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getElementPropertyAccessor(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lae/com/sun/xml/bind/api/RawAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

.field final synthetic val$acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V
    .locals 0

    .prologue
    .line 966
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$6;->this$0:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$6;->val$acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    invoke-direct {p0}, Lae/com/sun/xml/bind/api/RawAccessor;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "bean"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 973
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$6;->val$acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    invoke-virtual {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->getUnadapted(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 977
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$6;->val$acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    invoke-virtual {v0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->setUnadapted(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 978
    return-void
.end method
