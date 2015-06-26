.class final Lug;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Luf;


# direct methods
.method constructor <init>(Luf;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lug;->b:Luf;

    iput-object p2, p0, Lug;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 47
    iget-object v0, p0, Lug;->b:Luf;

    iget-object v0, v0, Luf;->f:Lcom/kms/licensing/iapurchase/BillingService;

    iget-object v1, p0, Lug;->a:Ljava/lang/String;

    const-string v2, "inapp"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/kms/licensing/iapurchase/BillingService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 48
    return-void
.end method
