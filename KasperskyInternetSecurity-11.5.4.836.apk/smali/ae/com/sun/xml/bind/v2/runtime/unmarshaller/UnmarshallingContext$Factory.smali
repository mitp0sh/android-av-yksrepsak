.class Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$Factory;
.super Ljava/lang/Object;
.source "UnmarshallingContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Factory"
.end annotation


# instance fields
.field private final factorInstance:Ljava/lang/Object;

.field private final method:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .locals 0
    .param p1, "factorInstance"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$Factory;->factorInstance:Ljava/lang/Object;

    .line 314
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$Factory;->method:Ljava/lang/reflect/Method;

    .line 315
    return-void
.end method


# virtual methods
.method public createInstance()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 319
    :try_start_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$Factory;->method:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$Factory;->factorInstance:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 325
    :goto_0
    return-object v1

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getInstance()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->handleError(Ljava/lang/Exception;Z)V

    .line 325
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 322
    :catch_1
    move-exception v0

    .line 323
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getInstance()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->handleError(Ljava/lang/Exception;Z)V

    goto :goto_1
.end method
