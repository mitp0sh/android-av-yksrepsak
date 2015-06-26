.class final Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$1;
.super Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;
.source "Lister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 480
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;-><init>()V

    return-void
.end method


# virtual methods
.method public addToPack(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "o1"    # Ljava/lang/Object;

    .prologue
    .line 490
    return-void
.end method

.method public endPacking(Ljava/lang/Object;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "o1"    # Ljava/lang/Object;
    .param p3, "accessor"    # Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    .prologue
    .line 493
    return-void
.end method

.method public iterator(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "context"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    .prologue
    .line 482
    # getter for: Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;->EMPTY_ITERATOR:Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;->access$300()Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public reset(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "accessor"    # Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    .prologue
    .line 496
    return-void
.end method

.method public startPacking(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)Ljava/lang/Object;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "accessor"    # Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    .prologue
    .line 486
    const/4 v0, 0x0

    return-object v0
.end method
