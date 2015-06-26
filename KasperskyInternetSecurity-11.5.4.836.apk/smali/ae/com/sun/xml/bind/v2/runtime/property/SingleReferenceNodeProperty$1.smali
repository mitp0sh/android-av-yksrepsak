.class Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty$1;
.super Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
.source "SingleReferenceNodeProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty;->getElementPropertyAccessor(Ljava/lang/String;Ljava/lang/String;)Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
        "<TBeanT;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty;

.field final synthetic val$ebi:Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty;Ljava/lang/Class;Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;)V
    .locals 0

    .prologue
    .line 143
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty$1;, "Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty.1;"
    .local p2, "x0":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Object;>;"
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty$1;->this$0:Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty;

    iput-object p3, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty$1;->val$ebi:Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;

    invoke-direct {p0, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 145
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty$1;, "Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty.1;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty$1;->this$0:Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    invoke-static {v1}, Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty;->access$000(Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty;)Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 146
    .local v0, "r":Ljava/lang/Object;, "TValueT;"
    instance-of v1, v0, Lae/javax/xml/bind/JAXBElement;

    if-eqz v1, :cond_0

    .line 147
    check-cast v0, Lae/javax/xml/bind/JAXBElement;

    .end local v0    # "r":Ljava/lang/Object;, "TValueT;"
    invoke-virtual {v0}, Lae/javax/xml/bind/JAXBElement;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 150
    :cond_0
    return-object v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 154
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty$1;, "Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty.1;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    if-eqz p2, :cond_0

    .line 156
    :try_start_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty$1;->val$ebi:Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;

    invoke-virtual {v1, p2}, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;->createInstanceFromValue(Ljava/lang/Object;)Lae/javax/xml/bind/JAXBElement;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object p2

    .line 165
    .end local p2    # "value":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty$1;->this$0:Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    invoke-static {v1}, Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty;->access$000(Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty;)Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 166
    return-void

    .line 157
    .restart local p2    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Lae/com/sun/xml/bind/api/AccessorException;

    invoke-direct {v1, v0}, Lae/com/sun/xml/bind/api/AccessorException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 159
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Lae/com/sun/xml/bind/api/AccessorException;

    invoke-direct {v1, v0}, Lae/com/sun/xml/bind/api/AccessorException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 161
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v1, Lae/com/sun/xml/bind/api/AccessorException;

    invoke-direct {v1, v0}, Lae/com/sun/xml/bind/api/AccessorException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
