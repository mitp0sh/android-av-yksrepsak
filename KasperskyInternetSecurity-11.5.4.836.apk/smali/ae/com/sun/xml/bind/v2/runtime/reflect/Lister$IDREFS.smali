.class final Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS;
.super Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;
.source "Lister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IDREFS"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS$Pack;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BeanT:",
        "Ljava/lang/Object;",
        "PropT:",
        "Ljava/lang/Object;",
        ">",
        "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister",
        "<TBeanT;TPropT;",
        "Ljava/lang/String;",
        "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS",
        "<TBeanT;TPropT;>.Pack;>;"
    }
.end annotation


# instance fields
.field private final core:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister",
            "<TBeanT;TPropT;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final itemType:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;Ljava/lang/Class;)V
    .locals 0
    .param p1, "core"    # Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;
    .param p2, "itemType"    # Ljava/lang/Class;

    .prologue
    .line 351
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS<TBeanT;TPropT;>;"
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;-><init>()V

    .line 352
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS;->core:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;

    .line 353
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS;->itemType:Ljava/lang/Class;

    .line 354
    return-void
.end method

.method static synthetic access$100(Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS;)Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS;

    .prologue
    .line 344
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS;->core:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;

    return-object v0
.end method

.method static synthetic access$200(Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS;

    .prologue
    .line 344
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS;->itemType:Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public addToPack(Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS$Pack;Ljava/lang/String;)V
    .locals 0
    .param p2, "item"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS",
            "<TBeanT;TPropT;>.Pack;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 367
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS<TBeanT;TPropT;>;"
    .local p1, "pack":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS$Pack;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS<TBeanT;TPropT;>.Pack;"
    invoke-virtual {p1, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS$Pack;->add(Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method public bridge synthetic addToPack(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 344
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS<TBeanT;TPropT;>;"
    check-cast p1, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS$Pack;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/String;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS;->addToPack(Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS$Pack;Ljava/lang/String;)V

    return-void
.end method

.method public endPacking(Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS$Pack;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS",
            "<TBeanT;TPropT;>.Pack;TBeanT;",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<TBeanT;TPropT;>;)V"
        }
    .end annotation

    .prologue
    .line 371
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS<TBeanT;TPropT;>;"
    .local p1, "pack":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS$Pack;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS<TBeanT;TPropT;>.Pack;"
    .local p2, "bean":Ljava/lang/Object;, "TBeanT;"
    .local p3, "acc":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor<TBeanT;TPropT;>;"
    return-void
.end method

.method public bridge synthetic endPacking(Ljava/lang/Object;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 344
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS<TBeanT;TPropT;>;"
    check-cast p1, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS$Pack;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS;->endPacking(Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS$Pack;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V

    return-void
.end method

.method public iterator(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;
    .locals 3
    .param p2, "context"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPropT;",
            "Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;",
            ")",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 357
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS<TBeanT;TPropT;>;"
    .local p1, "prop":Ljava/lang/Object;, "TPropT;"
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS;->core:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;

    invoke-virtual {v1, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;->iterator(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;

    move-result-object v0

    .line 359
    .local v0, "i":Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;
    new-instance v1, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFSIterator;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p2, v2}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFSIterator;-><init>(Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$1;)V

    return-object v1
.end method

.method public reset(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<TBeanT;TPropT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 374
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS<TBeanT;TPropT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    .local p2, "acc":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor<TBeanT;TPropT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS;->core:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;

    invoke-virtual {v0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;->reset(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V

    .line 375
    return-void
.end method

.method public startPacking(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS$Pack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<TBeanT;TPropT;>;)",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS",
            "<TBeanT;TPropT;>.Pack;"
        }
    .end annotation

    .prologue
    .line 363
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS<TBeanT;TPropT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    .local p2, "acc":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor<TBeanT;TPropT;>;"
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS$Pack;

    invoke-direct {v0, p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS$Pack;-><init>(Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V

    return-object v0
.end method

.method public bridge synthetic startPacking(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 344
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS<TBeanT;TPropT;>;"
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS;->startPacking(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS$Pack;

    move-result-object v0

    return-object v0
.end method
