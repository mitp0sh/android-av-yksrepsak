.class public final Lkf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkb;


# instance fields
.field private a:Lcom/kms/KisShieldView$ShieldState;

.field private b:Lcom/kms/KisShieldView;


# direct methods
.method public constructor <init>(Lcom/kms/KisShieldView;Lcom/kms/KisShieldView$ShieldState;)V
    .locals 0

    .prologue
    .line 706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 707
    iput-object p1, p0, Lkf;->b:Lcom/kms/KisShieldView;

    .line 708
    iput-object p2, p0, Lkf;->a:Lcom/kms/KisShieldView$ShieldState;

    .line 709
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 713
    iget-object v0, p0, Lkf;->b:Lcom/kms/KisShieldView;

    invoke-virtual {v0}, Lcom/kms/KisShieldView;->a()V

    .line 714
    iget-object v0, p0, Lkf;->b:Lcom/kms/KisShieldView;

    iget-object v1, p0, Lkf;->a:Lcom/kms/KisShieldView$ShieldState;

    invoke-virtual {v0, v1}, Lcom/kms/KisShieldView;->setShieldState(Lcom/kms/KisShieldView$ShieldState;)V

    .line 715
    return-void
.end method
