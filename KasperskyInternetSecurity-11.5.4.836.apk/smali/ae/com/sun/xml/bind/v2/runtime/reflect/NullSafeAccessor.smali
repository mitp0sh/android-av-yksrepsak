.class public Lae/com/sun/xml/bind/v2/runtime/reflect/NullSafeAccessor;
.super Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
.source "NullSafeAccessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
        "<TB;TV;>;"
    }
.end annotation


# instance fields
.field private final core:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<TB;TV;>;"
        }
    .end annotation
.end field

.field private final lister:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister",
            "<TB;TV;*TP;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<TB;TV;>;",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister",
            "<TB;TV;*TP;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/NullSafeAccessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/NullSafeAccessor<TB;TV;TP;>;"
    .local p1, "core":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor<TB;TV;>;"
    .local p2, "lister":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister<TB;TV;*TP;>;"
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->getValueType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;-><init>(Ljava/lang/Class;)V

    .line 60
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/NullSafeAccessor;->core:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    .line 61
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/NullSafeAccessor;->lister:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;

    .line 62
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/NullSafeAccessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/NullSafeAccessor<TB;TV;TP;>;"
    .local p1, "bean":Ljava/lang/Object;, "TB;"
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/NullSafeAccessor;->core:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    invoke-virtual {v2, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 66
    .local v1, "v":Ljava/lang/Object;, "TV;"
    if-nez v1, :cond_0

    .line 68
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/NullSafeAccessor;->lister:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/NullSafeAccessor;->core:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    invoke-virtual {v2, p1, v3}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;->startPacking(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)Ljava/lang/Object;

    move-result-object v0

    .line 69
    .local v0, "pack":Ljava/lang/Object;, "TP;"
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/NullSafeAccessor;->lister:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/NullSafeAccessor;->core:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    invoke-virtual {v2, v0, p1, v3}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;->endPacking(Ljava/lang/Object;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V

    .line 70
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/NullSafeAccessor;->core:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    invoke-virtual {v2, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 72
    .end local v0    # "pack":Ljava/lang/Object;, "TP;"
    :cond_0
    return-object v1
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/NullSafeAccessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/NullSafeAccessor<TB;TV;TP;>;"
    .local p1, "bean":Ljava/lang/Object;, "TB;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/NullSafeAccessor;->core:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    invoke-virtual {v0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    return-void
.end method
