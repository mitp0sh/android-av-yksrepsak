.class public final LnK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/gui/SelectFolderActivity;


# direct methods
.method public constructor <init>(Lcom/kms/gui/SelectFolderActivity;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, LnK;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, LnK;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-virtual {v0}, Lcom/kms/gui/SelectFolderActivity;->finish()V

    .line 90
    return-void
.end method
