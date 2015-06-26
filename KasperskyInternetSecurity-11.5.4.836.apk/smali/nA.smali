.class final LnA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private synthetic a:Lnv;


# direct methods
.method private constructor <init>(Lnv;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, LnA;->a:Lnv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnv;B)V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0, p1}, LnA;-><init>(Lnv;)V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, LnA;->a:Lnv;

    invoke-static {v0}, Lnv;->c(Lnv;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 126
    return-void
.end method
