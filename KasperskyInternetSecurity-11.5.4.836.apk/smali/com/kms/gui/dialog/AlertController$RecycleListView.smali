.class public Lcom/kms/gui/dialog/AlertController$RecycleListView;
.super Landroid/widget/ListView;
.source "SourceFile"


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 637
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 634
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kms/gui/dialog/AlertController$RecycleListView;->a:Z

    .line 638
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 641
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 634
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kms/gui/dialog/AlertController$RecycleListView;->a:Z

    .line 642
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 645
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 634
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kms/gui/dialog/AlertController$RecycleListView;->a:Z

    .line 646
    return-void
.end method
