.class public final Lnu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lay;

.field private synthetic b:Lcom/kms/gui/KisListFragmentActivity;


# direct methods
.method public constructor <init>(Lcom/kms/gui/KisListFragmentActivity;Lay;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lnu;->b:Lcom/kms/gui/KisListFragmentActivity;

    iput-object p2, p0, Lnu;->a:Lay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lnu;->b:Lcom/kms/gui/KisListFragmentActivity;

    invoke-static {}, Lcom/kms/gui/KisListFragmentActivity;->e()V

    .line 74
    iget-object v0, p0, Lnu;->b:Lcom/kms/gui/KisListFragmentActivity;

    iget-object v0, p0, Lnu;->a:Lay;

    invoke-static {}, Lcom/kms/gui/KisListFragmentActivity;->f()V

    .line 75
    return-void
.end method
