.class public final Lnl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/gui/KMS6ManageSpaceActivity;


# direct methods
.method public constructor <init>(Lcom/kms/gui/KMS6ManageSpaceActivity;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lnl;->a:Lcom/kms/gui/KMS6ManageSpaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lnl;->a:Lcom/kms/gui/KMS6ManageSpaceActivity;

    invoke-virtual {v0}, Lcom/kms/gui/KMS6ManageSpaceActivity;->finish()V

    .line 44
    return-void
.end method
