.class Lcom/google/tagmanager/DataLayer$2;
.super Ljava/lang/Object;
.source "DataLayer.java"

# interfaces
.implements Lcom/google/tagmanager/DataLayer$PersistentStore$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/tagmanager/DataLayer;->loadSavedMaps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/tagmanager/DataLayer;


# direct methods
.method constructor <init>(Lcom/google/tagmanager/DataLayer;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/google/tagmanager/DataLayer$2;->this$0:Lcom/google/tagmanager/DataLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyValuesLoaded(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/tagmanager/DataLayer$KeyValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p1, "keyValues":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/DataLayer$KeyValue;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/tagmanager/DataLayer$KeyValue;

    .line 285
    .local v1, "keyValue":Lcom/google/tagmanager/DataLayer$KeyValue;
    iget-object v2, p0, Lcom/google/tagmanager/DataLayer$2;->this$0:Lcom/google/tagmanager/DataLayer;

    iget-object v3, p0, Lcom/google/tagmanager/DataLayer$2;->this$0:Lcom/google/tagmanager/DataLayer;

    iget-object v4, v1, Lcom/google/tagmanager/DataLayer$KeyValue;->mKey:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/tagmanager/DataLayer$KeyValue;->mValue:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/google/tagmanager/DataLayer;->expandKeyValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    # invokes: Lcom/google/tagmanager/DataLayer;->pushWithoutWaitingForSaved(Ljava/util/Map;)V
    invoke-static {v2, v3}, Lcom/google/tagmanager/DataLayer;->access$000(Lcom/google/tagmanager/DataLayer;Ljava/util/Map;)V

    goto :goto_0

    .line 287
    .end local v1    # "keyValue":Lcom/google/tagmanager/DataLayer$KeyValue;
    :cond_0
    iget-object v2, p0, Lcom/google/tagmanager/DataLayer$2;->this$0:Lcom/google/tagmanager/DataLayer;

    # getter for: Lcom/google/tagmanager/DataLayer;->mPersistentStoreLoaded:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v2}, Lcom/google/tagmanager/DataLayer;->access$100(Lcom/google/tagmanager/DataLayer;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 288
    return-void
.end method
