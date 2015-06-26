.class public Lcom/amazonaws/auth/policy/Statement;
.super Ljava/lang/Object;
.source "Statement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/auth/policy/Statement$Effect;
    }
.end annotation


# instance fields
.field private actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/auth/policy/Action;",
            ">;"
        }
    .end annotation
.end field

.field private conditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/auth/policy/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private effect:Lcom/amazonaws/auth/policy/Statement$Effect;

.field private id:Ljava/lang/String;

.field private principals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/auth/policy/Principal;",
            ">;"
        }
    .end annotation
.end field

.field private resources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/auth/policy/Resource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazonaws/auth/policy/Statement$Effect;)V
    .locals 1
    .param p1, "effect"    # Lcom/amazonaws/auth/policy/Statement$Effect;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Statement;->principals:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Statement;->actions:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Statement;->conditions:Ljava/util/List;

    .line 92
    iput-object p1, p0, Lcom/amazonaws/auth/policy/Statement;->effect:Lcom/amazonaws/auth/policy/Statement$Effect;

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Statement;->id:Ljava/lang/String;

    .line 94
    return-void
.end method


# virtual methods
.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/auth/policy/Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/amazonaws/auth/policy/Statement;->actions:Ljava/util/List;

    return-object v0
.end method

.method public getConditions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/auth/policy/Condition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    iget-object v0, p0, Lcom/amazonaws/auth/policy/Statement;->conditions:Ljava/util/List;

    return-object v0
.end method

.method public getEffect()Lcom/amazonaws/auth/policy/Statement$Effect;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/amazonaws/auth/policy/Statement;->effect:Lcom/amazonaws/auth/policy/Statement$Effect;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/amazonaws/auth/policy/Statement;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPrincipals()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/auth/policy/Principal;",
            ">;"
        }
    .end annotation

    .prologue
    .line 360
    iget-object v0, p0, Lcom/amazonaws/auth/policy/Statement;->principals:Ljava/util/List;

    return-object v0
.end method

.method public getResources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/auth/policy/Resource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lcom/amazonaws/auth/policy/Statement;->resources:Ljava/util/List;

    return-object v0
.end method

.method public setActions(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/auth/policy/Action;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, "actions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/auth/policy/Action;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Statement;->actions:Ljava/util/List;

    .line 209
    return-void
.end method

.method public setConditions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/auth/policy/Condition;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 322
    .local p1, "conditions":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/auth/policy/Condition;>;"
    iput-object p1, p0, Lcom/amazonaws/auth/policy/Statement;->conditions:Ljava/util/List;

    .line 323
    return-void
.end method

.method public setEffect(Lcom/amazonaws/auth/policy/Statement$Effect;)V
    .locals 0
    .param p1, "effect"    # Lcom/amazonaws/auth/policy/Statement$Effect;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/amazonaws/auth/policy/Statement;->effect:Lcom/amazonaws/auth/policy/Statement$Effect;

    .line 180
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/amazonaws/auth/policy/Statement;->id:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setPrincipals(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/auth/policy/Principal;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 375
    .local p1, "principals":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/auth/policy/Principal;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Statement;->principals:Ljava/util/List;

    .line 376
    return-void
.end method

.method public setResources(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/auth/policy/Resource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p1, "resources":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/auth/policy/Resource;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Statement;->resources:Ljava/util/List;

    .line 260
    return-void
.end method

.method public varargs withActions([Lcom/amazonaws/auth/policy/Action;)Lcom/amazonaws/auth/policy/Statement;
    .locals 1
    .param p1, "actions"    # [Lcom/amazonaws/auth/policy/Action;

    .prologue
    .line 229
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazonaws/auth/policy/Statement;->setActions(Ljava/util/Collection;)V

    .line 230
    return-object p0
.end method

.method public varargs withConditions([Lcom/amazonaws/auth/policy/Condition;)Lcom/amazonaws/auth/policy/Statement;
    .locals 1
    .param p1, "conditions"    # [Lcom/amazonaws/auth/policy/Condition;

    .prologue
    .line 349
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazonaws/auth/policy/Statement;->setConditions(Ljava/util/List;)V

    .line 350
    return-object p0
.end method

.method public withId(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Statement;
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lcom/amazonaws/auth/policy/Statement;->setId(Ljava/lang/String;)V

    .line 158
    return-object p0
.end method

.method public varargs withPrincipals([Lcom/amazonaws/auth/policy/Principal;)Lcom/amazonaws/auth/policy/Statement;
    .locals 1
    .param p1, "principals"    # [Lcom/amazonaws/auth/policy/Principal;

    .prologue
    .line 394
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazonaws/auth/policy/Statement;->setPrincipals(Ljava/util/Collection;)V

    .line 395
    return-object p0
.end method

.method public varargs withResources([Lcom/amazonaws/auth/policy/Resource;)Lcom/amazonaws/auth/policy/Statement;
    .locals 1
    .param p1, "resources"    # [Lcom/amazonaws/auth/policy/Resource;

    .prologue
    .line 280
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazonaws/auth/policy/Statement;->setResources(Ljava/util/Collection;)V

    .line 281
    return-object p0
.end method
