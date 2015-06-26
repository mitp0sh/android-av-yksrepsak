.class public final Lky;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View$OnClickListener;

.field private final c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 22
    if-eqz p2, :cond_0

    const v0, 0x7f0e0057

    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 23
    iput-boolean p2, p0, Lky;->c:Z

    .line 24
    return-void

    .line 22
    :cond_0
    const v0, 0x7f0e0056

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 59
    invoke-virtual {p0}, Lky;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 62
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 63
    iget-object v3, p0, Lky;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 64
    iget-object v3, p0, Lky;->a:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 66
    const/4 v3, 0x0

    aget v3, v2, v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 67
    iget-object v3, p0, Lky;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 68
    iget-boolean v4, p0, Lky;->c:Z

    if-eqz v4, :cond_0

    .line 69
    aget v2, v2, v6

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 73
    :goto_0
    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 74
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 75
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 76
    iget-object v2, p0, Lky;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 77
    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 79
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 80
    return-void

    .line 71
    :cond_0
    aget v2, v2, v6

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0
.end method

.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lky;->b:Landroid/view/View$OnClickListener;

    .line 32
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lky;->a:Landroid/view/View;

    .line 28
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lky;->b:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lky;->b:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 39
    :cond_0
    invoke-virtual {p0}, Lky;->dismiss()V

    .line 40
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lky;->setContentView(I)V

    .line 47
    const v0, 0x7f0b0082

    invoke-virtual {p0, v0}, Lky;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const v0, 0x7f0b0083

    invoke-virtual {p0, v0}, Lky;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v0, p0, Lky;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lky;->a()V

    .line 54
    :cond_0
    return-void
.end method
