.class Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister$1;
.super Ljava/lang/Object;
.source "Lister.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister;->iterator([Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator",
        "<TItemT;>;"
    }
.end annotation


# instance fields
.field idx:I

.field final synthetic this$0:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister;

.field final synthetic val$objects:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 215
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister$1;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister.1;"
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister$1;->this$0:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister;

    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister$1;->val$objects:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    const/4 v0, 0x0

    iput v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister$1;->idx:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 218
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister$1;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister.1;"
    iget v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister$1;->idx:I

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister$1;->val$objects:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TItemT;"
        }
    .end annotation

    .prologue
    .line 222
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister$1;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister.1;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister$1;->val$objects:[Ljava/lang/Object;

    iget v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister$1;->idx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister$1;->idx:I

    aget-object v0, v0, v1

    return-object v0
.end method
