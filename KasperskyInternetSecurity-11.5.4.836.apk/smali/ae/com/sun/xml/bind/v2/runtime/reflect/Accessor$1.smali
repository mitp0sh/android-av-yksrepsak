.class final Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$1;
.super Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
.source "Accessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 449
    .local p1, "x0":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 451
    const/4 v0, 0x0

    return-object v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "o1"    # Ljava/lang/Object;

    .prologue
    .line 455
    return-void
.end method
