.class public interface abstract Lae/com/sun/xml/bind/v2/runtime/property/StructureLoaderBuilder;
.super Ljava/lang/Object;
.source "StructureLoaderBuilder.java"


# static fields
.field public static final CATCH_ALL:Ljavax/xml/namespace/QName;

.field public static final TEXT_HANDLER:Ljavax/xml/namespace/QName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 79
    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, "\u0000"

    const-string v2, "text"

    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/property/StructureLoaderBuilder;->TEXT_HANDLER:Ljavax/xml/namespace/QName;

    .line 93
    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, "\u0000"

    const-string v2, "catchAll"

    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/property/StructureLoaderBuilder;->CATCH_ALL:Ljavax/xml/namespace/QName;

    return-void
.end method


# virtual methods
.method public abstract buildChildElementUnmarshallers(Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;Lae/com/sun/xml/bind/v2/util/QNameMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;",
            "Lae/com/sun/xml/bind/v2/util/QNameMap",
            "<",
            "Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;",
            ">;)V"
        }
    .end annotation
.end method
