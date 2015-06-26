.class public final Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;
.super Ljava/lang/Object;
.source "UnmarshallerChain.java"


# instance fields
.field public final context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

.field private offset:I


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)V
    .locals 1
    .param p1, "context"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;->offset:I

    .line 68
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;->context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    .line 69
    return-void
.end method


# virtual methods
.method public allocateOffset()I
    .locals 2

    .prologue
    .line 75
    iget v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;->offset:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;->offset:I

    return v0
.end method

.method public getScopeSize()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;->offset:I

    return v0
.end method
