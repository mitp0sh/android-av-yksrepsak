.class Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerBoolean$1;
.super Ljava/lang/Object;
.source "PrimitiveArrayListerBoolean.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerBoolean;->iterator([ZLae/com/sun/xml/bind/v2/runtime/XMLSerializer;)Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field idx:I

.field final synthetic this$0:Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerBoolean;

.field final synthetic val$objects:[Z


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerBoolean;[Z)V
    .locals 1

    .prologue
    .line 66
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerBoolean$1;, "Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerBoolean.1;"
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerBoolean$1;->this$0:Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerBoolean;

    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerBoolean$1;->val$objects:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerBoolean$1;->idx:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 69
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerBoolean$1;, "Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerBoolean.1;"
    iget v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerBoolean$1;->idx:I

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerBoolean$1;->val$objects:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 73
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerBoolean$1;, "Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerBoolean.1;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerBoolean$1;->val$objects:[Z

    iget v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerBoolean$1;->idx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerBoolean$1;->idx:I

    aget-boolean v0, v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

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
    .line 66
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerBoolean$1;, "Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerBoolean.1;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerBoolean$1;->next()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
