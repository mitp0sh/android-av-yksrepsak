.class public final Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$Pack;
.super Ljava/util/ArrayList;
.source "Lister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Pack"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ItemT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<TItemT;>;"
    }
.end annotation


# instance fields
.field private final itemType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TItemT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TItemT;>;)V"
        }
    .end annotation

    .prologue
    .line 248
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$Pack;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$Pack<TItemT;>;"
    .local p1, "itemType":Ljava/lang/Class;, "Ljava/lang/Class<TItemT;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 249
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$Pack;->itemType:Ljava/lang/Class;

    .line 250
    return-void
.end method


# virtual methods
.method public build()[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TItemT;"
        }
    .end annotation

    .prologue
    .line 253
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$Pack;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$Pack<TItemT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$Pack;->itemType:Ljava/lang/Class;

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$Pack;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-super {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
