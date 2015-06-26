.class public final Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XsiNilLoader$Single;
.super Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XsiNilLoader;
.source "XsiNilLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XsiNilLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Single"
.end annotation


# instance fields
.field private final acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V
    .locals 0
    .param p1, "l"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    .param p2, "acc"    # Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XsiNilLoader;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;)V

    .line 108
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XsiNilLoader$Single;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    .line 109
    return-void
.end method


# virtual methods
.method protected onNil(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;)V
    .locals 5
    .param p1, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 114
    :try_start_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XsiNilLoader$Single;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    iget-object v2, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->prev:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    iget-object v2, v2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->target:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    iget-object v1, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->prev:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->nil:Z
    :try_end_0
    .catch Lae/com/sun/xml/bind/api/AccessorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Lae/com/sun/xml/bind/api/AccessorException;
    invoke-static {v0, v4}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XsiNilLoader$Single;->handleGenericException(Ljava/lang/Exception;Z)V

    goto :goto_0
.end method
