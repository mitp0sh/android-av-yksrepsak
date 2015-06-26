.class public final LeQ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/kaspersky/kts/gui/controls/AbsAnimListView;


# direct methods
.method public constructor <init>(Lcom/kaspersky/kts/gui/controls/AbsAnimListView;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, LeQ;->a:Lcom/kaspersky/kts/gui/controls/AbsAnimListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 356
    iget-object v0, p0, LeQ;->a:Lcom/kaspersky/kts/gui/controls/AbsAnimListView;

    invoke-static {v0, v1}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->a(Lcom/kaspersky/kts/gui/controls/AbsAnimListView;Z)Z

    .line 357
    iget-object v0, p0, LeQ;->a:Lcom/kaspersky/kts/gui/controls/AbsAnimListView;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->a(Lcom/kaspersky/kts/gui/controls/AbsAnimListView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, LeQ;->a:Lcom/kaspersky/kts/gui/controls/AbsAnimListView;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->a(Lcom/kaspersky/kts/gui/controls/AbsAnimListView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 359
    iget-object v0, p0, LeQ;->a:Lcom/kaspersky/kts/gui/controls/AbsAnimListView;

    invoke-static {v0, v2}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->a(Lcom/kaspersky/kts/gui/controls/AbsAnimListView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 361
    :cond_0
    iget-object v0, p0, LeQ;->a:Lcom/kaspersky/kts/gui/controls/AbsAnimListView;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->b(Lcom/kaspersky/kts/gui/controls/AbsAnimListView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, LeQ;->a:Lcom/kaspersky/kts/gui/controls/AbsAnimListView;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->b(Lcom/kaspersky/kts/gui/controls/AbsAnimListView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 363
    iget-object v0, p0, LeQ;->a:Lcom/kaspersky/kts/gui/controls/AbsAnimListView;

    invoke-static {v0, v2}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->b(Lcom/kaspersky/kts/gui/controls/AbsAnimListView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 365
    :cond_1
    iget-object v0, p0, LeQ;->a:Lcom/kaspersky/kts/gui/controls/AbsAnimListView;

    invoke-static {v0, v1}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->b(Lcom/kaspersky/kts/gui/controls/AbsAnimListView;Z)Z

    .line 366
    iget-object v0, p0, LeQ;->a:Lcom/kaspersky/kts/gui/controls/AbsAnimListView;

    invoke-virtual {v0}, Lcom/kaspersky/kts/gui/controls/AbsAnimListView;->invalidate()V

    .line 367
    return-void
.end method
