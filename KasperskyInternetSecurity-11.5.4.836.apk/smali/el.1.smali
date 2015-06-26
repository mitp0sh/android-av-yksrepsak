.class public abstract Lel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lef;


# instance fields
.field protected a:Lcom/kaspersky/kts/antitheft/ActionInfo;


# direct methods
.method protected constructor <init>(Lcom/kaspersky/kts/antitheft/ActionInfo;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lel;->a:Lcom/kaspersky/kts/antitheft/ActionInfo;

    .line 10
    return-void
.end method


# virtual methods
.method public final b()Lcom/kaspersky/kts/antitheft/ActionInfo;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lel;->a:Lcom/kaspersky/kts/antitheft/ActionInfo;

    return-object v0
.end method
