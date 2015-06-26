.class public final Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XsiNilLoader$Array;
.super Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XsiNilLoader;
.source "XsiNilLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XsiNilLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Array"
.end annotation


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;)V
    .locals 0
    .param p1, "core"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XsiNilLoader;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;)V

    .line 126
    return-void
.end method


# virtual methods
.method protected onNil(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;)V
    .locals 1
    .param p1, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    .prologue
    .line 131
    const/4 v0, 0x0

    iput-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->target:Ljava/lang/Object;

    .line 132
    return-void
.end method
