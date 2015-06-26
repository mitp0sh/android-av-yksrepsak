.class public Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;
.super Ljava/lang/Object;
.source "BucketWebsiteConfiguration.java"


# instance fields
.field private errorDocument:Ljava/lang/String;

.field private indexDocumentSuffix:Ljava/lang/String;

.field private redirectAllRequestsTo:Lcom/amazonaws/services/s3/model/RedirectRule;

.field private routingRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/RoutingRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->routingRules:Ljava/util/List;

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "indexDocumentSuffix"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->routingRules:Ljava/util/List;

    .line 100
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->indexDocumentSuffix:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "indexDocumentSuffix"    # Ljava/lang/String;
    .param p2, "errorDocument"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->routingRules:Ljava/util/List;

    .line 114
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->indexDocumentSuffix:Ljava/lang/String;

    .line 115
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->errorDocument:Ljava/lang/String;

    .line 116
    return-void
.end method


# virtual methods
.method public getErrorDocument()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->errorDocument:Ljava/lang/String;

    return-object v0
.end method

.method public getIndexDocumentSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->indexDocumentSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectAllRequestsTo()Lcom/amazonaws/services/s3/model/RedirectRule;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->redirectAllRequestsTo:Lcom/amazonaws/services/s3/model/RedirectRule;

    return-object v0
.end method

.method public getRoutingRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/RoutingRule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->routingRules:Ljava/util/List;

    return-object v0
.end method

.method public setErrorDocument(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorDocument"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->errorDocument:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setIndexDocumentSuffix(Ljava/lang/String;)V
    .locals 0
    .param p1, "indexDocumentSuffix"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->indexDocumentSuffix:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setRedirectAllRequestsTo(Lcom/amazonaws/services/s3/model/RedirectRule;)V
    .locals 0
    .param p1, "redirectAllRequestsTo"    # Lcom/amazonaws/services/s3/model/RedirectRule;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->redirectAllRequestsTo:Lcom/amazonaws/services/s3/model/RedirectRule;

    .line 171
    return-void
.end method

.method public setRoutingRules(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/RoutingRule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 205
    .local p1, "routingRules":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/s3/model/RoutingRule;>;"
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->routingRules:Ljava/util/List;

    .line 206
    return-void
.end method

.method public withRedirectAllRequestsTo(Lcom/amazonaws/services/s3/model/RedirectRule;)Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;
    .locals 0
    .param p1, "redirectAllRequestsTo"    # Lcom/amazonaws/services/s3/model/RedirectRule;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->redirectAllRequestsTo:Lcom/amazonaws/services/s3/model/RedirectRule;

    .line 193
    return-object p0
.end method

.method public withRoutingRules(Ljava/util/List;)Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/RoutingRule;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, "routingRules":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/s3/model/RoutingRule;>;"
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->routingRules:Ljava/util/List;

    .line 230
    return-object p0
.end method
