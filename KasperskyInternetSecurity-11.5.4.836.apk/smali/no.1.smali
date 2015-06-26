.class public final Lno;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lay;

.field private synthetic b:Lcom/kms/gui/KMSBaseListActivity;


# direct methods
.method public constructor <init>(Lcom/kms/gui/KMSBaseListActivity;Lay;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lno;->b:Lcom/kms/gui/KMSBaseListActivity;

    iput-object p2, p0, Lno;->a:Lay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lno;->b:Lcom/kms/gui/KMSBaseListActivity;

    invoke-virtual {v0}, Lcom/kms/gui/KMSBaseListActivity;->h()V

    .line 83
    iget-object v0, p0, Lno;->b:Lcom/kms/gui/KMSBaseListActivity;

    iget-object v0, p0, Lno;->a:Lay;

    invoke-static {}, Lcom/kms/gui/KMSBaseListActivity;->i()V

    .line 84
    return-void
.end method
