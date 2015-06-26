.class Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS$Pack;
.super Ljava/lang/Object;
.source "Lister.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Patcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Pack"
.end annotation


# instance fields
.field private final acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<TBeanT;TPropT;>;"
        }
    .end annotation
.end field

.field private final bean:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TBeanT;"
        }
    .end annotation
.end field

.field private final context:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

.field private final idrefs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final location:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;

.field final synthetic this$0:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS;


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<TBeanT;TPropT;>;)V"
        }
    .end annotation

    .prologue
    .line 387
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS$Pack;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS<TBeanT;TPropT;>.Pack;"
    .local p2, "bean":Ljava/lang/Object;, "TBeanT;"
    .local p3, "acc":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor<TBeanT;TPropT;>;"
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS$Pack;->this$0:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS$Pack;->idrefs:Ljava/util/List;

    .line 388
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS$Pack;->bean:Ljava/lang/Object;

    .line 389
    iput-object p3, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS$Pack;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    .line 390
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getInstance()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS$Pack;->context:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    .line 391
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx$Snapshot;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS$Pack;->context:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getLocator()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;

    move-result-object v1

    invoke-direct {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx$Snapshot;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;)V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS$Pack;->location:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;

    .line 392
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS$Pack;->context:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    invoke-virtual {v0, p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->addPatcher(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Patcher;)V

    .line 393
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 1
    .param p1, "item"    # Ljava/lang/String;

    .prologue
    .line 396
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS$Pack;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS<TBeanT;TPropT;>.Pack;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS$Pack;->idrefs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    return-void
.end method

.method public run()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 404
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS$Pack;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS<TBeanT;TPropT;>.Pack;"
    :try_start_0
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS$Pack;->this$0:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS;->core:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;
    invoke-static {v6}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS;->access$100(Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS;)Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;

    move-result-object v6

    iget-object v7, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS$Pack;->bean:Ljava/lang/Object;

    iget-object v8, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS$Pack;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    invoke-virtual {v6, v7, v8}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;->startPacking(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)Ljava/lang/Object;

    move-result-object v4

    .line 406
    .local v4, "pack":Ljava/lang/Object;
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS$Pack;->idrefs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 407
    .local v3, "id":Ljava/lang/String;
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS$Pack;->context:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    iget-object v7, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS$Pack;->this$0:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS;->itemType:Ljava/lang/Class;
    invoke-static {v7}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS;->access$200(Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS;)Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getObjectFromId(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/concurrent/Callable;
    :try_end_0
    .catch Lae/com/sun/xml/bind/api/AccessorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 411
    .local v0, "callable":Ljava/util/concurrent/Callable;
    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lae/com/sun/xml/bind/api/AccessorException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .line 418
    .local v5, "t":Ljava/lang/Object;
    :goto_1
    if-nez v5, :cond_1

    .line 419
    :try_start_2
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS$Pack;->context:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    iget-object v7, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS$Pack;->bean:Ljava/lang/Object;

    iget-object v8, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS$Pack;->location:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;

    invoke-virtual {v6, v7, v3, v8}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->errorUnresolvedIDREF(Ljava/lang/Object;Ljava/lang/String;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;)V
    :try_end_2
    .catch Lae/com/sun/xml/bind/api/AccessorException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 427
    .end local v0    # "callable":Ljava/util/concurrent/Callable;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "pack":Ljava/lang/Object;
    .end local v5    # "t":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 428
    .local v1, "e":Lae/com/sun/xml/bind/api/AccessorException;
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS$Pack;->context:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    invoke-virtual {v6, v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->handleError(Ljava/lang/Exception;)V

    .line 430
    .end local v1    # "e":Lae/com/sun/xml/bind/api/AccessorException;
    :goto_2
    return-void

    .line 411
    .restart local v0    # "callable":Ljava/util/concurrent/Callable;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "id":Ljava/lang/String;
    .restart local v4    # "pack":Ljava/lang/Object;
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 412
    :catch_1
    move-exception v1

    .line 413
    .local v1, "e":Lorg/xml/sax/SAXException;
    :try_start_3
    throw v1

    .line 414
    .end local v1    # "e":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v1

    .line 415
    .local v1, "e":Ljava/lang/Exception;
    new-instance v6, Lcom/sun/istack/SAXException2;

    invoke-direct {v6, v1}, Lcom/sun/istack/SAXException2;-><init>(Ljava/lang/Exception;)V

    throw v6

    .line 421
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v5    # "t":Ljava/lang/Object;
    :cond_1
    invoke-static {}, Lae/com/sun/xml/bind/v2/TODO;->prototype()V

    .line 422
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS$Pack;->this$0:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS;->core:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;
    invoke-static {v6}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS;->access$100(Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS;)Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;->addToPack(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 426
    .end local v0    # "callable":Ljava/util/concurrent/Callable;
    .end local v3    # "id":Ljava/lang/String;
    .end local v5    # "t":Ljava/lang/Object;
    :cond_2
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS$Pack;->this$0:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS;->core:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;
    invoke-static {v6}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS;->access$100(Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS;)Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;

    move-result-object v6

    iget-object v7, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS$Pack;->bean:Ljava/lang/Object;

    iget-object v8, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS$Pack;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    invoke-virtual {v6, v4, v7, v8}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;->endPacking(Ljava/lang/Object;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V
    :try_end_3
    .catch Lae/com/sun/xml/bind/api/AccessorException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method
